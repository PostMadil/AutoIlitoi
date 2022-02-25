part of client_actions;

@freezed
class CreateClient with _$CreateClient implements AppAction {
  const factory CreateClient({required String name, required String phoneNumber}) = CreateClientStart;

  const factory CreateClient.successful(Client client) = CreateClientSuccessful;

  const factory CreateClient.error(Object error, StackTrace stackTrace) = CreateClientError;
}
