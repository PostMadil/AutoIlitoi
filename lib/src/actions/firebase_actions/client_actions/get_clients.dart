part of client_actions;

@freezed
class GetClients with _$GetClients implements AppAction {
  const factory GetClients() = GetClientsStart;

  const factory GetClients.successful(List<Client> clients) = GetClientsSuccessful;

  const factory GetClients.error(Object error, StackTrace stackTrace) = GetClientsError;
}
