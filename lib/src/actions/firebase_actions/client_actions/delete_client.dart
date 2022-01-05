part of client_actions;

@freezed
class DeleteClient with _$DeleteClient implements AppAction {
  const factory DeleteClient(Client client) = DeleteClientStart;

  const factory DeleteClient.successful(Client client) = DeleteClientSuccessful;

  const factory DeleteClient.error(Object error, StackTrace stackTrace) = DeleteClientError;
}
