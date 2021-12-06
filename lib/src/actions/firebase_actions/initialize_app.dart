part of firebase_actions;

@freezed
class InitializeApp with _$InitializeApp implements AppAction {
  const factory InitializeApp() = InitializeAppStart;

  const factory InitializeApp.successful(AppUser? user) = InitializeAppSuccessful;

  const factory InitializeApp.error(Object error, StackTrace stackTrace) = InitializeAppError;
}
