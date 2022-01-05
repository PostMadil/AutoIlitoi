part of models;

abstract class Order implements Built<Order, OrderBuilder> {
  factory Order([void Function(OrderBuilder b) updates]) = _$Order;

  factory Order.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  factory Order.fromData(
      {required String id, required OrderDetails details, required List<CarPart> items, required String dateTime,}) {
    return _$Order((OrderBuilder b) {
      b
        ..isOffer = details.isOffer
        ..id = id
        ..items = ListBuilder(items)
        ..name = details.name!
        ..phoneNumber = details.phoneNumber!
        ..chassisNumber = details.chassisNumber!
        ..dateTime = dateTime
        ..carPlate = details.carPlate!
        ..paid = details.paid!
        ..total = details.total!
        ..make = details.make
        ..clientId = details.clientId
        ..model = details.model;
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

  String? get make;

  String? get model;

  BuiltList<CarPart> get items;

  bool get isOffer;

  String? get clientId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Order> get serializer => _$orderSerializer;
}
