part of models;

abstract class Order implements Built<Order, OrderBuilder> {
  factory Order([void Function(OrderBuilder b) updates]) = _$Order;

  factory Order.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  factory Order.fromData(
      {required String id, required OrderDetails details, required List<CarPart> items, required String dateTime}) {
    return _$Order((OrderBuilder b) {
      b
        ..id = id
        ..items = ListBuilder(items)
        ..name = details.name!
        ..phoneNumber = details.phoneNumber!
        ..chassisNumber = details.chassisNumber!
        ..dateTime = dateTime
        ..carPlate = details.carPlate!
        ..paid = details.paid!
        ..total = details.total!
        ..cif = details.cif
        ..address = details.address;
    });
  }

  Order._();

  String get id;

  String get carPlate;

  String get chassisNumber;

  String get dateTime;

  String get name;

  String get phoneNumber;

  String get total;

  bool get paid;

  String? get cif;

  String? get address;

  BuiltList<CarPart> get items;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Order> get serializer => _$orderSerializer;
}
