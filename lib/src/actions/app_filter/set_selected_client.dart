part of filter_actions;

@freezed
class SetSelectedClient with _$SetSelectedClient implements AppAction {
  const factory SetSelectedClient(Client? client) = SetSelectedClient$;
}
