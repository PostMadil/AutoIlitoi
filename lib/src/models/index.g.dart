// GENERATED CODE - DO NOT MODIFY BY HAND

part of models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Client> _$clientSerializer = new _$ClientSerializer();
Serializer<Statistics> _$statisticsSerializer = new _$StatisticsSerializer();
Serializer<FilterOptions> _$filterOptionsSerializer =
    new _$FilterOptionsSerializer();
Serializer<OrderDetails> _$orderDetailsSerializer =
    new _$OrderDetailsSerializer();
Serializer<AppState> _$appStateSerializer = new _$AppStateSerializer();
Serializer<AppUser> _$appUserSerializer = new _$AppUserSerializer();
Serializer<CarPart> _$carPartSerializer = new _$CarPartSerializer();
Serializer<Order> _$orderSerializer = new _$OrderSerializer();

class _$ClientSerializer implements StructuredSerializer<Client> {
  @override
  final Iterable<Type> types = const [Client, _$Client];
  @override
  final String wireName = 'Client';

  @override
  Iterable<Object?> serialize(Serializers serializers, Client object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Client deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClientBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$StatisticsSerializer implements StructuredSerializer<Statistics> {
  @override
  final Iterable<Type> types = const [Statistics, _$Statistics];
  @override
  final String wireName = 'Statistics';

  @override
  Iterable<Object?> serialize(Serializers serializers, Statistics object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'totalUnpaid',
      serializers.serialize(object.totalUnpaid,
          specifiedType: const FullType(double)),
      'totalPaid',
      serializers.serialize(object.totalPaid,
          specifiedType: const FullType(double)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(double)),
      'months',
      serializers.serialize(object.months,
          specifiedType: const FullType(List, const [const FullType(String)])),
      'ordersPerMonth',
      serializers.serialize(object.ordersPerMonth,
          specifiedType: const FullType(List, const [const FullType(int)])),
      'moneyPerMonth',
      serializers.serialize(object.moneyPerMonth,
          specifiedType: const FullType(List, const [const FullType(double)])),
    ];

    return result;
  }

  @override
  Statistics deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatisticsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'totalUnpaid':
          result.totalUnpaid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalPaid':
          result.totalPaid = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'months':
          result.months = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(String)]))
              as List<String>;
          break;
        case 'ordersPerMonth':
          result.ordersPerMonth = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(int)]))
              as List<int>;
          break;
        case 'moneyPerMonth':
          result.moneyPerMonth = serializers.deserialize(value,
                  specifiedType:
                      const FullType(List, const [const FullType(double)]))
              as List<double>;
          break;
      }
    }

    return result.build();
  }
}

class _$FilterOptionsSerializer implements StructuredSerializer<FilterOptions> {
  @override
  final Iterable<Type> types = const [FilterOptions, _$FilterOptions];
  @override
  final String wireName = 'FilterOptions';

  @override
  Iterable<Object?> serialize(Serializers serializers, FilterOptions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'onlyPaid',
      serializers.serialize(object.onlyPaid,
          specifiedType: const FullType(bool)),
      'onlyUnpaid',
      serializers.serialize(object.onlyUnpaid,
          specifiedType: const FullType(bool)),
      'higherThan',
      serializers.serialize(object.higherThan,
          specifiedType: const FullType(bool)),
      'higherThanAmount',
      serializers.serialize(object.higherThanAmount,
          specifiedType: const FullType(double)),
      'lowerThan',
      serializers.serialize(object.lowerThan,
          specifiedType: const FullType(bool)),
      'lowerThanAmount',
      serializers.serialize(object.lowerThanAmount,
          specifiedType: const FullType(double)),
      'searchBy',
      serializers.serialize(object.searchBy,
          specifiedType: const FullType(String)),
      'searchParam',
      serializers.serialize(object.searchParam,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.selectedClient;
    if (value != null) {
      result
        ..add('selectedClient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Client)));
    }
    return result;
  }

  @override
  FilterOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FilterOptionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'onlyPaid':
          result.onlyPaid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'onlyUnpaid':
          result.onlyUnpaid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'higherThan':
          result.higherThan = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'higherThanAmount':
          result.higherThanAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lowerThan':
          result.lowerThan = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'lowerThanAmount':
          result.lowerThanAmount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'searchBy':
          result.searchBy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'searchParam':
          result.searchParam = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'selectedClient':
          result.selectedClient.replace(serializers.deserialize(value,
              specifiedType: const FullType(Client))! as Client);
          break;
      }
    }

    return result.build();
  }
}

class _$OrderDetailsSerializer implements StructuredSerializer<OrderDetails> {
  @override
  final Iterable<Type> types = const [OrderDetails, _$OrderDetails];
  @override
  final String wireName = 'OrderDetails';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrderDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'isOffer',
      serializers.serialize(object.isOffer,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.carPlate;
    if (value != null) {
      result
        ..add('carPlate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.chassisNumber;
    if (value != null) {
      result
        ..add('chassisNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phoneNumber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paid;
    if (value != null) {
      result
        ..add('paid')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.make;
    if (value != null) {
      result
        ..add('make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientId;
    if (value != null) {
      result
        ..add('clientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrderDetails deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'carPlate':
          result.carPlate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'chassisNumber':
          result.chassisNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isOffer':
          result.isOffer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$AppStateSerializer implements StructuredSerializer<AppState> {
  @override
  final Iterable<Type> types = const [AppState, _$AppState];
  @override
  final String wireName = 'AppState';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'orders',
      serializers.serialize(object.orders,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Order)])),
      'selectedOrders',
      serializers.serialize(object.selectedOrders,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Order)])),
      'offers',
      serializers.serialize(object.offers,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Order)])),
      'clients',
      serializers.serialize(object.clients,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Client)])),
      'isFetchingOrders',
      serializers.serialize(object.isFetchingOrders,
          specifiedType: const FullType(bool)),
      'selectedView',
      serializers.serialize(object.selectedView,
          specifiedType: const FullType(int)),
      'filterOptions',
      serializers.serialize(object.filterOptions,
          specifiedType: const FullType(FilterOptions)),
      'statistics',
      serializers.serialize(object.statistics,
          specifiedType: const FullType(Statistics)),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AppUser)));
    }
    value = object.selectedOrder;
    if (value != null) {
      result
        ..add('selectedOrder')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Order)));
    }
    return result;
  }

  @override
  AppState deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppUser))! as AppUser);
          break;
        case 'orders':
          result.orders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Order)]))!
              as BuiltList<Object?>);
          break;
        case 'selectedOrders':
          result.selectedOrders.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Order)]))!
              as BuiltList<Object?>);
          break;
        case 'offers':
          result.offers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Order)]))!
              as BuiltList<Object?>);
          break;
        case 'clients':
          result.clients.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Client)]))!
              as BuiltList<Object?>);
          break;
        case 'isFetchingOrders':
          result.isFetchingOrders = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'selectedOrder':
          result.selectedOrder.replace(serializers.deserialize(value,
              specifiedType: const FullType(Order))! as Order);
          break;
        case 'selectedView':
          result.selectedView = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'filterOptions':
          result.filterOptions.replace(serializers.deserialize(value,
              specifiedType: const FullType(FilterOptions))! as FilterOptions);
          break;
        case 'statistics':
          result.statistics.replace(serializers.deserialize(value,
              specifiedType: const FullType(Statistics))! as Statistics);
          break;
      }
    }

    return result.build();
  }
}

class _$AppUserSerializer implements StructuredSerializer<AppUser> {
  @override
  final Iterable<Type> types = const [AppUser, _$AppUser];
  @override
  final String wireName = 'AppUser';

  @override
  Iterable<Object?> serialize(Serializers serializers, AppUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AppUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CarPartSerializer implements StructuredSerializer<CarPart> {
  @override
  final Iterable<Type> types = const [CarPart, _$CarPart];
  @override
  final String wireName = 'CarPart';

  @override
  Iterable<Object?> serialize(Serializers serializers, CarPart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.qty;
    if (value != null) {
      result
        ..add('qty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.provider;
    if (value != null) {
      result
        ..add('provider')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CarPart deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CarPartBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'qty':
          result.qty = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'provider':
          result.provider = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrderSerializer implements StructuredSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];
  @override
  final String wireName = 'Order';

  @override
  Iterable<Object?> serialize(Serializers serializers, Order object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'carPlate',
      serializers.serialize(object.carPlate,
          specifiedType: const FullType(String)),
      'chassisNumber',
      serializers.serialize(object.chassisNumber,
          specifiedType: const FullType(String)),
      'dateTime',
      serializers.serialize(object.dateTime,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'phoneNumber',
      serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String)),
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(String)),
      'paid',
      serializers.serialize(object.paid, specifiedType: const FullType(bool)),
      'items',
      serializers.serialize(object.items,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CarPart)])),
      'isOffer',
      serializers.serialize(object.isOffer,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.make;
    if (value != null) {
      result
        ..add('make')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.model;
    if (value != null) {
      result
        ..add('model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.clientId;
    if (value != null) {
      result
        ..add('clientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Order deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'carPlate':
          result.carPlate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'chassisNumber':
          result.chassisNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'dateTime':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phoneNumber':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'paid':
          result.paid = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'make':
          result.make = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'model':
          result.model = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CarPart)]))!
              as BuiltList<Object?>);
          break;
        case 'isOffer':
          result.isOffer = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Client extends Client {
  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;

  factory _$Client([void Function(ClientBuilder)? updates]) =>
      (new ClientBuilder()..update(updates)).build();

  _$Client._({required this.id, required this.name, required this.phoneNumber})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Client', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'Client', 'name');
    BuiltValueNullFieldError.checkNotNull(phoneNumber, 'Client', 'phoneNumber');
  }

  @override
  Client rebuild(void Function(ClientBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClientBuilder toBuilder() => new ClientBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Client &&
        id == other.id &&
        name == other.name &&
        phoneNumber == other.phoneNumber;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), name.hashCode), phoneNumber.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Client')
          ..add('id', id)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber))
        .toString();
  }
}

class ClientBuilder implements Builder<Client, ClientBuilder> {
  _$Client? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  ClientBuilder();

  ClientBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Client other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Client;
  }

  @override
  void update(void Function(ClientBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Client build() {
    final _$result = _$v ??
        new _$Client._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Client', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name, 'Client', 'name'),
            phoneNumber: BuiltValueNullFieldError.checkNotNull(
                phoneNumber, 'Client', 'phoneNumber'));
    replace(_$result);
    return _$result;
  }
}

class _$Statistics extends Statistics {
  @override
  final double totalUnpaid;
  @override
  final double totalPaid;
  @override
  final double total;
  @override
  final List<String> months;
  @override
  final List<int> ordersPerMonth;
  @override
  final List<double> moneyPerMonth;

  factory _$Statistics([void Function(StatisticsBuilder)? updates]) =>
      (new StatisticsBuilder()..update(updates)).build();

  _$Statistics._(
      {required this.totalUnpaid,
      required this.totalPaid,
      required this.total,
      required this.months,
      required this.ordersPerMonth,
      required this.moneyPerMonth})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        totalUnpaid, 'Statistics', 'totalUnpaid');
    BuiltValueNullFieldError.checkNotNull(totalPaid, 'Statistics', 'totalPaid');
    BuiltValueNullFieldError.checkNotNull(total, 'Statistics', 'total');
    BuiltValueNullFieldError.checkNotNull(months, 'Statistics', 'months');
    BuiltValueNullFieldError.checkNotNull(
        ordersPerMonth, 'Statistics', 'ordersPerMonth');
    BuiltValueNullFieldError.checkNotNull(
        moneyPerMonth, 'Statistics', 'moneyPerMonth');
  }

  @override
  Statistics rebuild(void Function(StatisticsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatisticsBuilder toBuilder() => new StatisticsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Statistics &&
        totalUnpaid == other.totalUnpaid &&
        totalPaid == other.totalPaid &&
        total == other.total &&
        months == other.months &&
        ordersPerMonth == other.ordersPerMonth &&
        moneyPerMonth == other.moneyPerMonth;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, totalUnpaid.hashCode), totalPaid.hashCode),
                    total.hashCode),
                months.hashCode),
            ordersPerMonth.hashCode),
        moneyPerMonth.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Statistics')
          ..add('totalUnpaid', totalUnpaid)
          ..add('totalPaid', totalPaid)
          ..add('total', total)
          ..add('months', months)
          ..add('ordersPerMonth', ordersPerMonth)
          ..add('moneyPerMonth', moneyPerMonth))
        .toString();
  }
}

class StatisticsBuilder implements Builder<Statistics, StatisticsBuilder> {
  _$Statistics? _$v;

  double? _totalUnpaid;
  double? get totalUnpaid => _$this._totalUnpaid;
  set totalUnpaid(double? totalUnpaid) => _$this._totalUnpaid = totalUnpaid;

  double? _totalPaid;
  double? get totalPaid => _$this._totalPaid;
  set totalPaid(double? totalPaid) => _$this._totalPaid = totalPaid;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  List<String>? _months;
  List<String>? get months => _$this._months;
  set months(List<String>? months) => _$this._months = months;

  List<int>? _ordersPerMonth;
  List<int>? get ordersPerMonth => _$this._ordersPerMonth;
  set ordersPerMonth(List<int>? ordersPerMonth) =>
      _$this._ordersPerMonth = ordersPerMonth;

  List<double>? _moneyPerMonth;
  List<double>? get moneyPerMonth => _$this._moneyPerMonth;
  set moneyPerMonth(List<double>? moneyPerMonth) =>
      _$this._moneyPerMonth = moneyPerMonth;

  StatisticsBuilder();

  StatisticsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _totalUnpaid = $v.totalUnpaid;
      _totalPaid = $v.totalPaid;
      _total = $v.total;
      _months = $v.months;
      _ordersPerMonth = $v.ordersPerMonth;
      _moneyPerMonth = $v.moneyPerMonth;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Statistics other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Statistics;
  }

  @override
  void update(void Function(StatisticsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Statistics build() {
    final _$result = _$v ??
        new _$Statistics._(
            totalUnpaid: BuiltValueNullFieldError.checkNotNull(
                totalUnpaid, 'Statistics', 'totalUnpaid'),
            totalPaid: BuiltValueNullFieldError.checkNotNull(
                totalPaid, 'Statistics', 'totalPaid'),
            total: BuiltValueNullFieldError.checkNotNull(
                total, 'Statistics', 'total'),
            months: BuiltValueNullFieldError.checkNotNull(
                months, 'Statistics', 'months'),
            ordersPerMonth: BuiltValueNullFieldError.checkNotNull(
                ordersPerMonth, 'Statistics', 'ordersPerMonth'),
            moneyPerMonth: BuiltValueNullFieldError.checkNotNull(
                moneyPerMonth, 'Statistics', 'moneyPerMonth'));
    replace(_$result);
    return _$result;
  }
}

class _$FilterOptions extends FilterOptions {
  @override
  final bool onlyPaid;
  @override
  final bool onlyUnpaid;
  @override
  final bool higherThan;
  @override
  final double higherThanAmount;
  @override
  final bool lowerThan;
  @override
  final double lowerThanAmount;
  @override
  final String searchBy;
  @override
  final String searchParam;
  @override
  final Client? selectedClient;

  factory _$FilterOptions([void Function(FilterOptionsBuilder)? updates]) =>
      (new FilterOptionsBuilder()..update(updates)).build();

  _$FilterOptions._(
      {required this.onlyPaid,
      required this.onlyUnpaid,
      required this.higherThan,
      required this.higherThanAmount,
      required this.lowerThan,
      required this.lowerThanAmount,
      required this.searchBy,
      required this.searchParam,
      this.selectedClient})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onlyPaid, 'FilterOptions', 'onlyPaid');
    BuiltValueNullFieldError.checkNotNull(
        onlyUnpaid, 'FilterOptions', 'onlyUnpaid');
    BuiltValueNullFieldError.checkNotNull(
        higherThan, 'FilterOptions', 'higherThan');
    BuiltValueNullFieldError.checkNotNull(
        higherThanAmount, 'FilterOptions', 'higherThanAmount');
    BuiltValueNullFieldError.checkNotNull(
        lowerThan, 'FilterOptions', 'lowerThan');
    BuiltValueNullFieldError.checkNotNull(
        lowerThanAmount, 'FilterOptions', 'lowerThanAmount');
    BuiltValueNullFieldError.checkNotNull(
        searchBy, 'FilterOptions', 'searchBy');
    BuiltValueNullFieldError.checkNotNull(
        searchParam, 'FilterOptions', 'searchParam');
  }

  @override
  FilterOptions rebuild(void Function(FilterOptionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterOptionsBuilder toBuilder() => new FilterOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterOptions &&
        onlyPaid == other.onlyPaid &&
        onlyUnpaid == other.onlyUnpaid &&
        higherThan == other.higherThan &&
        higherThanAmount == other.higherThanAmount &&
        lowerThan == other.lowerThan &&
        lowerThanAmount == other.lowerThanAmount &&
        searchBy == other.searchBy &&
        searchParam == other.searchParam &&
        selectedClient == other.selectedClient;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, onlyPaid.hashCode),
                                    onlyUnpaid.hashCode),
                                higherThan.hashCode),
                            higherThanAmount.hashCode),
                        lowerThan.hashCode),
                    lowerThanAmount.hashCode),
                searchBy.hashCode),
            searchParam.hashCode),
        selectedClient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterOptions')
          ..add('onlyPaid', onlyPaid)
          ..add('onlyUnpaid', onlyUnpaid)
          ..add('higherThan', higherThan)
          ..add('higherThanAmount', higherThanAmount)
          ..add('lowerThan', lowerThan)
          ..add('lowerThanAmount', lowerThanAmount)
          ..add('searchBy', searchBy)
          ..add('searchParam', searchParam)
          ..add('selectedClient', selectedClient))
        .toString();
  }
}

class FilterOptionsBuilder
    implements Builder<FilterOptions, FilterOptionsBuilder> {
  _$FilterOptions? _$v;

  bool? _onlyPaid;
  bool? get onlyPaid => _$this._onlyPaid;
  set onlyPaid(bool? onlyPaid) => _$this._onlyPaid = onlyPaid;

  bool? _onlyUnpaid;
  bool? get onlyUnpaid => _$this._onlyUnpaid;
  set onlyUnpaid(bool? onlyUnpaid) => _$this._onlyUnpaid = onlyUnpaid;

  bool? _higherThan;
  bool? get higherThan => _$this._higherThan;
  set higherThan(bool? higherThan) => _$this._higherThan = higherThan;

  double? _higherThanAmount;
  double? get higherThanAmount => _$this._higherThanAmount;
  set higherThanAmount(double? higherThanAmount) =>
      _$this._higherThanAmount = higherThanAmount;

  bool? _lowerThan;
  bool? get lowerThan => _$this._lowerThan;
  set lowerThan(bool? lowerThan) => _$this._lowerThan = lowerThan;

  double? _lowerThanAmount;
  double? get lowerThanAmount => _$this._lowerThanAmount;
  set lowerThanAmount(double? lowerThanAmount) =>
      _$this._lowerThanAmount = lowerThanAmount;

  String? _searchBy;
  String? get searchBy => _$this._searchBy;
  set searchBy(String? searchBy) => _$this._searchBy = searchBy;

  String? _searchParam;
  String? get searchParam => _$this._searchParam;
  set searchParam(String? searchParam) => _$this._searchParam = searchParam;

  ClientBuilder? _selectedClient;
  ClientBuilder get selectedClient =>
      _$this._selectedClient ??= new ClientBuilder();
  set selectedClient(ClientBuilder? selectedClient) =>
      _$this._selectedClient = selectedClient;

  FilterOptionsBuilder();

  FilterOptionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onlyPaid = $v.onlyPaid;
      _onlyUnpaid = $v.onlyUnpaid;
      _higherThan = $v.higherThan;
      _higherThanAmount = $v.higherThanAmount;
      _lowerThan = $v.lowerThan;
      _lowerThanAmount = $v.lowerThanAmount;
      _searchBy = $v.searchBy;
      _searchParam = $v.searchParam;
      _selectedClient = $v.selectedClient?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FilterOptions;
  }

  @override
  void update(void Function(FilterOptionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterOptions build() {
    _$FilterOptions _$result;
    try {
      _$result = _$v ??
          new _$FilterOptions._(
              onlyPaid: BuiltValueNullFieldError.checkNotNull(
                  onlyPaid, 'FilterOptions', 'onlyPaid'),
              onlyUnpaid: BuiltValueNullFieldError.checkNotNull(
                  onlyUnpaid, 'FilterOptions', 'onlyUnpaid'),
              higherThan: BuiltValueNullFieldError.checkNotNull(
                  higherThan, 'FilterOptions', 'higherThan'),
              higherThanAmount: BuiltValueNullFieldError.checkNotNull(
                  higherThanAmount, 'FilterOptions', 'higherThanAmount'),
              lowerThan: BuiltValueNullFieldError.checkNotNull(
                  lowerThan, 'FilterOptions', 'lowerThan'),
              lowerThanAmount: BuiltValueNullFieldError.checkNotNull(
                  lowerThanAmount, 'FilterOptions', 'lowerThanAmount'),
              searchBy: BuiltValueNullFieldError.checkNotNull(
                  searchBy, 'FilterOptions', 'searchBy'),
              searchParam: BuiltValueNullFieldError.checkNotNull(
                  searchParam, 'FilterOptions', 'searchParam'),
              selectedClient: _selectedClient?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedClient';
        _selectedClient?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FilterOptions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OrderDetails extends OrderDetails {
  @override
  final String? carPlate;
  @override
  final String? chassisNumber;
  @override
  final String? name;
  @override
  final String? phoneNumber;
  @override
  final String? total;
  @override
  final bool? paid;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final bool isOffer;
  @override
  final String? clientId;

  factory _$OrderDetails([void Function(OrderDetailsBuilder)? updates]) =>
      (new OrderDetailsBuilder()..update(updates)).build();

  _$OrderDetails._(
      {this.carPlate,
      this.chassisNumber,
      this.name,
      this.phoneNumber,
      this.total,
      this.paid,
      this.make,
      this.model,
      required this.isOffer,
      this.clientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(isOffer, 'OrderDetails', 'isOffer');
  }

  @override
  OrderDetails rebuild(void Function(OrderDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDetailsBuilder toBuilder() => new OrderDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDetails &&
        carPlate == other.carPlate &&
        chassisNumber == other.chassisNumber &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        total == other.total &&
        paid == other.paid &&
        make == other.make &&
        model == other.model &&
        isOffer == other.isOffer &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, carPlate.hashCode),
                                        chassisNumber.hashCode),
                                    name.hashCode),
                                phoneNumber.hashCode),
                            total.hashCode),
                        paid.hashCode),
                    make.hashCode),
                model.hashCode),
            isOffer.hashCode),
        clientId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderDetails')
          ..add('carPlate', carPlate)
          ..add('chassisNumber', chassisNumber)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('total', total)
          ..add('paid', paid)
          ..add('make', make)
          ..add('model', model)
          ..add('isOffer', isOffer)
          ..add('clientId', clientId))
        .toString();
  }
}

class OrderDetailsBuilder
    implements Builder<OrderDetails, OrderDetailsBuilder> {
  _$OrderDetails? _$v;

  String? _carPlate;
  String? get carPlate => _$this._carPlate;
  set carPlate(String? carPlate) => _$this._carPlate = carPlate;

  String? _chassisNumber;
  String? get chassisNumber => _$this._chassisNumber;
  set chassisNumber(String? chassisNumber) =>
      _$this._chassisNumber = chassisNumber;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _total;
  String? get total => _$this._total;
  set total(String? total) => _$this._total = total;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  bool? _isOffer;
  bool? get isOffer => _$this._isOffer;
  set isOffer(bool? isOffer) => _$this._isOffer = isOffer;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  OrderDetailsBuilder();

  OrderDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _carPlate = $v.carPlate;
      _chassisNumber = $v.chassisNumber;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _total = $v.total;
      _paid = $v.paid;
      _make = $v.make;
      _model = $v.model;
      _isOffer = $v.isOffer;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderDetails;
  }

  @override
  void update(void Function(OrderDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderDetails build() {
    final _$result = _$v ??
        new _$OrderDetails._(
            carPlate: carPlate,
            chassisNumber: chassisNumber,
            name: name,
            phoneNumber: phoneNumber,
            total: total,
            paid: paid,
            make: make,
            model: model,
            isOffer: BuiltValueNullFieldError.checkNotNull(
                isOffer, 'OrderDetails', 'isOffer'),
            clientId: clientId);
    replace(_$result);
    return _$result;
  }
}

class _$AppState extends AppState {
  @override
  final AppUser? user;
  @override
  final BuiltList<Order> orders;
  @override
  final BuiltList<Order> selectedOrders;
  @override
  final BuiltList<Order> offers;
  @override
  final BuiltList<Client> clients;
  @override
  final bool isFetchingOrders;
  @override
  final Order? selectedOrder;
  @override
  final int selectedView;
  @override
  final FilterOptions filterOptions;
  @override
  final Statistics statistics;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates)).build();

  _$AppState._(
      {this.user,
      required this.orders,
      required this.selectedOrders,
      required this.offers,
      required this.clients,
      required this.isFetchingOrders,
      this.selectedOrder,
      required this.selectedView,
      required this.filterOptions,
      required this.statistics})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(orders, 'AppState', 'orders');
    BuiltValueNullFieldError.checkNotNull(
        selectedOrders, 'AppState', 'selectedOrders');
    BuiltValueNullFieldError.checkNotNull(offers, 'AppState', 'offers');
    BuiltValueNullFieldError.checkNotNull(clients, 'AppState', 'clients');
    BuiltValueNullFieldError.checkNotNull(
        isFetchingOrders, 'AppState', 'isFetchingOrders');
    BuiltValueNullFieldError.checkNotNull(
        selectedView, 'AppState', 'selectedView');
    BuiltValueNullFieldError.checkNotNull(
        filterOptions, 'AppState', 'filterOptions');
    BuiltValueNullFieldError.checkNotNull(statistics, 'AppState', 'statistics');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        user == other.user &&
        orders == other.orders &&
        selectedOrders == other.selectedOrders &&
        offers == other.offers &&
        clients == other.clients &&
        isFetchingOrders == other.isFetchingOrders &&
        selectedOrder == other.selectedOrder &&
        selectedView == other.selectedView &&
        filterOptions == other.filterOptions &&
        statistics == other.statistics;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, user.hashCode), orders.hashCode),
                                    selectedOrders.hashCode),
                                offers.hashCode),
                            clients.hashCode),
                        isFetchingOrders.hashCode),
                    selectedOrder.hashCode),
                selectedView.hashCode),
            filterOptions.hashCode),
        statistics.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppState')
          ..add('user', user)
          ..add('orders', orders)
          ..add('selectedOrders', selectedOrders)
          ..add('offers', offers)
          ..add('clients', clients)
          ..add('isFetchingOrders', isFetchingOrders)
          ..add('selectedOrder', selectedOrder)
          ..add('selectedView', selectedView)
          ..add('filterOptions', filterOptions)
          ..add('statistics', statistics))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  ListBuilder<Order>? _orders;
  ListBuilder<Order> get orders => _$this._orders ??= new ListBuilder<Order>();
  set orders(ListBuilder<Order>? orders) => _$this._orders = orders;

  ListBuilder<Order>? _selectedOrders;
  ListBuilder<Order> get selectedOrders =>
      _$this._selectedOrders ??= new ListBuilder<Order>();
  set selectedOrders(ListBuilder<Order>? selectedOrders) =>
      _$this._selectedOrders = selectedOrders;

  ListBuilder<Order>? _offers;
  ListBuilder<Order> get offers => _$this._offers ??= new ListBuilder<Order>();
  set offers(ListBuilder<Order>? offers) => _$this._offers = offers;

  ListBuilder<Client>? _clients;
  ListBuilder<Client> get clients =>
      _$this._clients ??= new ListBuilder<Client>();
  set clients(ListBuilder<Client>? clients) => _$this._clients = clients;

  bool? _isFetchingOrders;
  bool? get isFetchingOrders => _$this._isFetchingOrders;
  set isFetchingOrders(bool? isFetchingOrders) =>
      _$this._isFetchingOrders = isFetchingOrders;

  OrderBuilder? _selectedOrder;
  OrderBuilder get selectedOrder =>
      _$this._selectedOrder ??= new OrderBuilder();
  set selectedOrder(OrderBuilder? selectedOrder) =>
      _$this._selectedOrder = selectedOrder;

  int? _selectedView;
  int? get selectedView => _$this._selectedView;
  set selectedView(int? selectedView) => _$this._selectedView = selectedView;

  FilterOptionsBuilder? _filterOptions;
  FilterOptionsBuilder get filterOptions =>
      _$this._filterOptions ??= new FilterOptionsBuilder();
  set filterOptions(FilterOptionsBuilder? filterOptions) =>
      _$this._filterOptions = filterOptions;

  StatisticsBuilder? _statistics;
  StatisticsBuilder get statistics =>
      _$this._statistics ??= new StatisticsBuilder();
  set statistics(StatisticsBuilder? statistics) =>
      _$this._statistics = statistics;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _orders = $v.orders.toBuilder();
      _selectedOrders = $v.selectedOrders.toBuilder();
      _offers = $v.offers.toBuilder();
      _clients = $v.clients.toBuilder();
      _isFetchingOrders = $v.isFetchingOrders;
      _selectedOrder = $v.selectedOrder?.toBuilder();
      _selectedView = $v.selectedView;
      _filterOptions = $v.filterOptions.toBuilder();
      _statistics = $v.statistics.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppState build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              user: _user?.build(),
              orders: orders.build(),
              selectedOrders: selectedOrders.build(),
              offers: offers.build(),
              clients: clients.build(),
              isFetchingOrders: BuiltValueNullFieldError.checkNotNull(
                  isFetchingOrders, 'AppState', 'isFetchingOrders'),
              selectedOrder: _selectedOrder?.build(),
              selectedView: BuiltValueNullFieldError.checkNotNull(
                  selectedView, 'AppState', 'selectedView'),
              filterOptions: filterOptions.build(),
              statistics: statistics.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'orders';
        orders.build();
        _$failedField = 'selectedOrders';
        selectedOrders.build();
        _$failedField = 'offers';
        offers.build();
        _$failedField = 'clients';
        clients.build();

        _$failedField = 'selectedOrder';
        _selectedOrder?.build();

        _$failedField = 'filterOptions';
        filterOptions.build();
        _$failedField = 'statistics';
        statistics.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppUser extends AppUser {
  @override
  final String uid;

  factory _$AppUser([void Function(AppUserBuilder)? updates]) =>
      (new AppUserBuilder()..update(updates)).build();

  _$AppUser._({required this.uid}) : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid');
  }

  @override
  AppUser rebuild(void Function(AppUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppUserBuilder toBuilder() => new AppUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppUser && uid == other.uid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, uid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppUser')..add('uid', uid)).toString();
  }
}

class AppUserBuilder implements Builder<AppUser, AppUserBuilder> {
  _$AppUser? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  AppUserBuilder();

  AppUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppUser;
  }

  @override
  void update(void Function(AppUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppUser build() {
    final _$result = _$v ??
        new _$AppUser._(
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'AppUser', 'uid'));
    replace(_$result);
    return _$result;
  }
}

class _$CarPart extends CarPart {
  @override
  final String? name;
  @override
  final String? code;
  @override
  final String? qty;
  @override
  final String? price;
  @override
  final String? type;
  @override
  final String? provider;

  factory _$CarPart([void Function(CarPartBuilder)? updates]) =>
      (new CarPartBuilder()..update(updates)).build();

  _$CarPart._(
      {this.name, this.code, this.qty, this.price, this.type, this.provider})
      : super._();

  @override
  CarPart rebuild(void Function(CarPartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarPartBuilder toBuilder() => new CarPartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarPart &&
        name == other.name &&
        code == other.code &&
        qty == other.qty &&
        price == other.price &&
        type == other.type &&
        provider == other.provider;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), code.hashCode), qty.hashCode),
                price.hashCode),
            type.hashCode),
        provider.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CarPart')
          ..add('name', name)
          ..add('code', code)
          ..add('qty', qty)
          ..add('price', price)
          ..add('type', type)
          ..add('provider', provider))
        .toString();
  }
}

class CarPartBuilder implements Builder<CarPart, CarPartBuilder> {
  _$CarPart? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _qty;
  String? get qty => _$this._qty;
  set qty(String? qty) => _$this._qty = qty;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _provider;
  String? get provider => _$this._provider;
  set provider(String? provider) => _$this._provider = provider;

  CarPartBuilder();

  CarPartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _code = $v.code;
      _qty = $v.qty;
      _price = $v.price;
      _type = $v.type;
      _provider = $v.provider;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarPart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarPart;
  }

  @override
  void update(void Function(CarPartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CarPart build() {
    final _$result = _$v ??
        new _$CarPart._(
            name: name,
            code: code,
            qty: qty,
            price: price,
            type: type,
            provider: provider);
    replace(_$result);
    return _$result;
  }
}

class _$Order extends Order {
  @override
  final String id;
  @override
  final String carPlate;
  @override
  final String chassisNumber;
  @override
  final String dateTime;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String total;
  @override
  final bool paid;
  @override
  final String? make;
  @override
  final String? model;
  @override
  final BuiltList<CarPart> items;
  @override
  final bool isOffer;
  @override
  final String? clientId;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (new OrderBuilder()..update(updates)).build();

  _$Order._(
      {required this.id,
      required this.carPlate,
      required this.chassisNumber,
      required this.dateTime,
      required this.name,
      required this.phoneNumber,
      required this.total,
      required this.paid,
      this.make,
      this.model,
      required this.items,
      required this.isOffer,
      this.clientId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Order', 'id');
    BuiltValueNullFieldError.checkNotNull(carPlate, 'Order', 'carPlate');
    BuiltValueNullFieldError.checkNotNull(
        chassisNumber, 'Order', 'chassisNumber');
    BuiltValueNullFieldError.checkNotNull(dateTime, 'Order', 'dateTime');
    BuiltValueNullFieldError.checkNotNull(name, 'Order', 'name');
    BuiltValueNullFieldError.checkNotNull(phoneNumber, 'Order', 'phoneNumber');
    BuiltValueNullFieldError.checkNotNull(total, 'Order', 'total');
    BuiltValueNullFieldError.checkNotNull(paid, 'Order', 'paid');
    BuiltValueNullFieldError.checkNotNull(items, 'Order', 'items');
    BuiltValueNullFieldError.checkNotNull(isOffer, 'Order', 'isOffer');
  }

  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => new OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        id == other.id &&
        carPlate == other.carPlate &&
        chassisNumber == other.chassisNumber &&
        dateTime == other.dateTime &&
        name == other.name &&
        phoneNumber == other.phoneNumber &&
        total == other.total &&
        paid == other.paid &&
        make == other.make &&
        model == other.model &&
        items == other.items &&
        isOffer == other.isOffer &&
        clientId == other.clientId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, id.hashCode),
                                                    carPlate.hashCode),
                                                chassisNumber.hashCode),
                                            dateTime.hashCode),
                                        name.hashCode),
                                    phoneNumber.hashCode),
                                total.hashCode),
                            paid.hashCode),
                        make.hashCode),
                    model.hashCode),
                items.hashCode),
            isOffer.hashCode),
        clientId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Order')
          ..add('id', id)
          ..add('carPlate', carPlate)
          ..add('chassisNumber', chassisNumber)
          ..add('dateTime', dateTime)
          ..add('name', name)
          ..add('phoneNumber', phoneNumber)
          ..add('total', total)
          ..add('paid', paid)
          ..add('make', make)
          ..add('model', model)
          ..add('items', items)
          ..add('isOffer', isOffer)
          ..add('clientId', clientId))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _carPlate;
  String? get carPlate => _$this._carPlate;
  set carPlate(String? carPlate) => _$this._carPlate = carPlate;

  String? _chassisNumber;
  String? get chassisNumber => _$this._chassisNumber;
  set chassisNumber(String? chassisNumber) =>
      _$this._chassisNumber = chassisNumber;

  String? _dateTime;
  String? get dateTime => _$this._dateTime;
  set dateTime(String? dateTime) => _$this._dateTime = dateTime;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _total;
  String? get total => _$this._total;
  set total(String? total) => _$this._total = total;

  bool? _paid;
  bool? get paid => _$this._paid;
  set paid(bool? paid) => _$this._paid = paid;

  String? _make;
  String? get make => _$this._make;
  set make(String? make) => _$this._make = make;

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  ListBuilder<CarPart>? _items;
  ListBuilder<CarPart> get items =>
      _$this._items ??= new ListBuilder<CarPart>();
  set items(ListBuilder<CarPart>? items) => _$this._items = items;

  bool? _isOffer;
  bool? get isOffer => _$this._isOffer;
  set isOffer(bool? isOffer) => _$this._isOffer = isOffer;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  OrderBuilder();

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _carPlate = $v.carPlate;
      _chassisNumber = $v.chassisNumber;
      _dateTime = $v.dateTime;
      _name = $v.name;
      _phoneNumber = $v.phoneNumber;
      _total = $v.total;
      _paid = $v.paid;
      _make = $v.make;
      _model = $v.model;
      _items = $v.items.toBuilder();
      _isOffer = $v.isOffer;
      _clientId = $v.clientId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Order build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          new _$Order._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Order', 'id'),
              carPlate: BuiltValueNullFieldError.checkNotNull(
                  carPlate, 'Order', 'carPlate'),
              chassisNumber: BuiltValueNullFieldError.checkNotNull(
                  chassisNumber, 'Order', 'chassisNumber'),
              dateTime: BuiltValueNullFieldError.checkNotNull(
                  dateTime, 'Order', 'dateTime'),
              name:
                  BuiltValueNullFieldError.checkNotNull(name, 'Order', 'name'),
              phoneNumber: BuiltValueNullFieldError.checkNotNull(
                  phoneNumber, 'Order', 'phoneNumber'),
              total: BuiltValueNullFieldError.checkNotNull(
                  total, 'Order', 'total'),
              paid:
                  BuiltValueNullFieldError.checkNotNull(paid, 'Order', 'paid'),
              make: make,
              model: model,
              items: items.build(),
              isOffer: BuiltValueNullFieldError.checkNotNull(
                  isOffer, 'Order', 'isOffer'),
              clientId: clientId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
