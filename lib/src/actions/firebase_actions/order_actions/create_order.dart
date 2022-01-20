part of order_actions;

@freezed
class CreateOrder with _$CreateOrder implements AppAction {
  const factory CreateOrder({required OrderDetails details, required List<CarPart> items}) = CreateOrderStart;

  const factory CreateOrder.successful(Order order) = CreateOrderSuccessful;

  const factory CreateOrder.error(Object error, StackTrace stackTrace) = CreateOrderError;
}
