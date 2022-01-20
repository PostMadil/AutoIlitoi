part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState([void Function(AppStateBuilder b) updates]) = _$AppState;
  factory AppState.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b.user = null;
      b.isFetchingOrders = false;
      b.selectedOrder = null;
      b.selectedView = 0;
      b.filterOptions = FilterOptions.intialStaate().toBuilder();
      b.statistics = Statistics.initialState().toBuilder();
    });
  }

  AppState._();

  AppUser? get user;

  BuiltList<Order> get orders;

  BuiltList<Order> get selectedOrders;

  BuiltList<Order> get finishedOrders;

  BuiltList<Order> get offers;

  BuiltList<Client> get clients;

  bool get isFetchingOrders;

  Order? get selectedOrder;

  int get selectedView;

  FilterOptions get filterOptions;

  Statistics get statistics;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
