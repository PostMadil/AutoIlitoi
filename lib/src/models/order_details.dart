part of models;

abstract class OrderDetails implements Built<OrderDetails, OrderDetailsBuilder> {
  factory OrderDetails([void Function(OrderDetailsBuilder b) updates]) = _$OrderDetails;

  factory OrderDetails.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as OrderDetails;

  factory OrderDetails.initialState() {
    return _$OrderDetails((OrderDetailsBuilder b) {
      b
        ..carPlate = null
        ..name = null
        ..carPlate = null
        ..total = null
        ..chassisNumber = null
        ..paid = null;
    });
  }

  factory OrderDetails.fromData({
    required String carPlate,
    required String chassisNumber,
    required String name,
    required String phoneNumber,
    required String total,
    required bool paid,
    required String cif,
    required String address,
  }) {
    return _$OrderDetails((OrderDetailsBuilder b) {
      b
        ..carPlate = carPlate
        ..chassisNumber = chassisNumber
        ..name = name
        ..phoneNumber = phoneNumber
        ..total = total
        ..paid = paid
        ..address = address
        ..cif = cif;
    });
  }

  OrderDetails._();

  String? get carPlate;

  String? get chassisNumber;

  String? get name;

  String? get phoneNumber;

  String? get total;

  bool? get paid;

  String? get cif;

  String? get address;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<OrderDetails> get serializer => _$orderDetailsSerializer;
}
