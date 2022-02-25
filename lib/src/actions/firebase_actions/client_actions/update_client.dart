part of client_actions;

@freezed
class UpdateClient with _$UpdateClient implements AppAction {
  const factory UpdateClient(Client client) = UpdateClientStart;

  const factory UpdateClient.successful() = UpdateClientSuccessful;

  const factory UpdateClient.error(Object error, StackTrace stackTrace) = UpdateClientError;
}
