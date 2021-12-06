part of firebase_actions;

@freezed
class Logout with _$Logout implements AppAction {
  const factory Logout() = LogoutStart;

  const factory Logout.successful() = LogoutSuccessful;

  const factory Logout.error(Object error, StackTrace stackTrace) = LogoutError;
}
