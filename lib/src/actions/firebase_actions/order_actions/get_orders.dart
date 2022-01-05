part of order_actions;

@freezed
class GetOrders with _$GetOrders implements AppAction {
  const factory GetOrders() = GetOrdersStart;

  const factory GetOrders.successful(List<Order> orders) = GetOrdersSuccessful;

  const factory GetOrders.error(Object error, StackTrace stackTrace) = GetOrdersError;
}
