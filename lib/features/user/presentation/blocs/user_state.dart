import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user_entity.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = UserInitial;
  const factory UserState.loading() = UserLoading;
  const factory UserState.loaded({
    required UserEntity user,
    @Default(false) bool isChangingUserName,
    String? userNameError, // eror changing user name
  }) = UserLoaded;

  const factory UserState.failure(String message) = UserFailure;
}
