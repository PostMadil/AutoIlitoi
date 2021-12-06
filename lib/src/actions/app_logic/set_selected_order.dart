part of app_actions;

@freezed
class SetSelectedOrder with _$SetSelectedOrder implements AppAction {
  const factory SetSelectedOrder(Order order) = SetSelectedOrder$;
}
