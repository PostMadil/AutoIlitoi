part of order_actions;


@freezed
class DeleteOrder with _$DeleteOrder implements AppAction {
  const factory DeleteOrder() = DeleteOrderStart;

  const factory DeleteOrder.successful(Order order) = DeleteOrderSuccessful;

  const factory DeleteOrder.error(Object error, StackTrace stackTrace) = DeleteOrderError;
}
