import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../domain/usecases/change_user_name_usecase.dart';
import '../../domain/usecases/get_user_usecase.dart';
import 'user_event.dart';
import 'user_state.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final ChangeUserNameUseCase _changeUserNameUseCase;
  final GetUserUseCase _getUserUseCase;

  UserBloc({
    required this._changeUserNameUseCase,
    required this._getUserUseCase,
  }) : super(const UserState.initial()) {
    on<UserStarted>(_onStarted);
    on<UserFetched>(_onStarted);
    on<UserChangeUserNameRequested>(
      _onChangeUserNameRequested,
      // prevents race conditions when quickly re-tapping
      transformer: droppable(),
    );
  }

  FutureOr<void> _onStarted(UserEvent event, Emitter<UserState> emit) async {
    emit(const UserState.loading());
    await _fetchAndEmitUser(emit);
  }

  FutureOr<void> _onChangeUserNameRequested(
    UserChangeUserNameRequested event,
    Emitter<UserState> emit,
  ) async {
    final currentState = state;
    if (currentState is! UserLoaded || currentState.isChangingUserName) return;

    final name = event.name.trim();
    if (name.isEmpty) {
      emit(currentState.copyWith(userNameError: 'Name cannot be empty'));
      return;
    }

    // "userNameError: null" – clears the previous error
    emit(currentState.copyWith(isChangingUserName: true, userNameError: null));

    final result = await _changeUserNameUseCase(name);
    await result.fold<Future<void>>(
      (failure) async => _emitNameChangeError(currentState, failure, emit),
      (_) async {
        final userResult = await _getUserUseCase();
        userResult.fold(
          (failure) => _emitNameChangeError(currentState, failure, emit),
          (user) => emit(UserState.loaded(user: user)),
        );
      },
    );
  }

  void _emitNameChangeError(
    UserLoaded currentState,
    Failure failure,
    Emitter<UserState> emit,
  ) {
    emit(
      currentState.copyWith(
        isChangingUserName: false,
        userNameError: _mapFailureToMessage(failure),
      ),
    );
  }

  Future<void> _fetchAndEmitUser(Emitter<UserState> emit) async {
    final result = await _getUserUseCase();
    result.fold(
      (failure) => emit(UserState.failure(_mapFailureToMessage(failure))),
      (user) => emit(UserState.loaded(user: user)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return failure.maybeWhen(
      storage: () => 'Error working with local storage',
      notFound: () => 'Data not found',
      unexpected: (message) => 'Unexpected error: $message',
      orElse: () => 'Unknown error',
    );
  }
}