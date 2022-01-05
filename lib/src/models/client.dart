part of models;

abstract class Client implements Built<Client, ClientBuilder> {
  factory Client([void Function(ClientBuilder b) updates]) = _$Client;

  factory Client.fromJson(dynamic json) => serializers.deserializeWith(serializer, json) as Client;

  factory Client.fromData({required String id, required String name, required String phoneNumber}) {
    return _$Client((ClientBuilder b) {
      b
        ..id = id
        ..phoneNumber = phoneNumber
        ..name = name;
    });
  }

  Client._();

  String get id;

  String get name;

  String get phoneNumber;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<Client> get serializer => _$clientSerializer;
}
