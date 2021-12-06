part of firebase_actions;

@freezed
class UpdateOrder with _$UpdateOrder implements AppAction {
  const factory UpdateOrder(Order order) = UpdateOrderStart;

  const factory UpdateOrder.successful(Order updatedOrder) = UpdateOrderSuccessful;

  const factory UpdateOrder.error(Object error, StackTrace stackTrace) = UpdateOrderError;
}
