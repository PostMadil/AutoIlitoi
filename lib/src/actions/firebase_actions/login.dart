part of firebase_actions;

@freezed
class Login with _$Login implements AppAction {
  const factory Login({required String email, required String password, required ActionResponse response}) = Login$;

  const factory Login.successful(AppUser user) = LoginSuccessful;

  const factory Login.error(dynamic error) = LoginError;
}
