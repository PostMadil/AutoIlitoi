part of models;

abstract class CarPart implements Built<CarPart, CarPartBuilder> {
  factory CarPart([void Function(CarPartBuilder b) updates]) = _$CarPart;
  factory CarPart.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  factory CarPart.fromData(
      {required String name, required String code, required String price, required String qty, required String type,required String provider}) {
    return _$CarPart((CarPartBuilder b) {
      b
        ..provider = provider
        ..name = name
        ..price = price
        ..code = code
        ..qty = qty
        ..type = type;
    });
  }

  CarPart._();

  String? get name;

  String? get code;

  String? get qty;

  String? get price;

  String? get type;

  String? get provider;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<CarPart> get serializer => _$carPartSerializer;
}
