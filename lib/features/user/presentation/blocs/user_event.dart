import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_event.freezed.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.started() = UserStarted;
  // fetching data
  const factory UserEvent.userFetched() = UserFetched;

  const factory UserEvent.changeUserNameRequested(String name) = UserChangeUserNameRequested;
}