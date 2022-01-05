// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of filter_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetSelectedClientTearOff {
  const _$SetSelectedClientTearOff();

  SetSelectedClient$ call(Client? client) {
    return SetSelectedClient$(
      client,
    );
  }
}

/// @nodoc
const $SetSelectedClient = _$SetSelectedClientTearOff();

/// @nodoc
mixin _$SetSelectedClient {
  Client? get client => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedClientCopyWith<SetSelectedClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedClientCopyWith<$Res> {
  factory $SetSelectedClientCopyWith(
          SetSelectedClient value, $Res Function(SetSelectedClient) then) =
      _$SetSelectedClientCopyWithImpl<$Res>;
  $Res call({Client? client});
}

/// @nodoc
class _$SetSelectedClientCopyWithImpl<$Res>
    implements $SetSelectedClientCopyWith<$Res> {
  _$SetSelectedClientCopyWithImpl(this._value, this._then);

  final SetSelectedClient _value;
  // ignore: unused_field
  final $Res Function(SetSelectedClient) _then;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(_value.copyWith(
      client: client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedClient$CopyWith<$Res>
    implements $SetSelectedClientCopyWith<$Res> {
  factory $SetSelectedClient$CopyWith(
          SetSelectedClient$ value, $Res Function(SetSelectedClient$) then) =
      _$SetSelectedClient$CopyWithImpl<$Res>;
  @override
  $Res call({Client? client});
}

/// @nodoc
class _$SetSelectedClient$CopyWithImpl<$Res>
    extends _$SetSelectedClientCopyWithImpl<$Res>
    implements $SetSelectedClient$CopyWith<$Res> {
  _$SetSelectedClient$CopyWithImpl(
      SetSelectedClient$ _value, $Res Function(SetSelectedClient$) _then)
      : super(_value, (v) => _then(v as SetSelectedClient$));

  @override
  SetSelectedClient$ get _value => super._value as SetSelectedClient$;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(SetSelectedClient$(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client?,
    ));
  }
}

/// @nodoc

class _$SetSelectedClient$ implements SetSelectedClient$ {
  const _$SetSelectedClient$(this.client);

  @override
  final Client? client;

  @override
  String toString() {
    return 'SetSelectedClient(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSelectedClient$ &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  $SetSelectedClient$CopyWith<SetSelectedClient$> get copyWith =>
      _$SetSelectedClient$CopyWithImpl<SetSelectedClient$>(this, _$identity);
}

abstract class SetSelectedClient$ implements SetSelectedClient {
  const factory SetSelectedClient$(Client? client) = _$SetSelectedClient$;

  @override
  Client? get client;
  @override
  @JsonKey(ignore: true)
  $SetSelectedClient$CopyWith<SetSelectedClient$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSearchByTearOff {
  const _$SetSearchByTearOff();

  SetSearchBy$ call(String value) {
    return SetSearchBy$(
      value,
    );
  }
}

/// @nodoc
const $SetSearchBy = _$SetSearchByTearOff();

/// @nodoc
mixin _$SetSearchBy {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSearchByCopyWith<SetSearchBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSearchByCopyWith<$Res> {
  factory $SetSearchByCopyWith(
          SetSearchBy value, $Res Function(SetSearchBy) then) =
      _$SetSearchByCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetSearchByCopyWithImpl<$Res> implements $SetSearchByCopyWith<$Res> {
  _$SetSearchByCopyWithImpl(this._value, this._then);

  final SetSearchBy _value;
  // ignore: unused_field
  final $Res Function(SetSearchBy) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SetSearchBy$CopyWith<$Res>
    implements $SetSearchByCopyWith<$Res> {
  factory $SetSearchBy$CopyWith(
          SetSearchBy$ value, $Res Function(SetSearchBy$) then) =
      _$SetSearchBy$CopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$SetSearchBy$CopyWithImpl<$Res> extends _$SetSearchByCopyWithImpl<$Res>
    implements $SetSearchBy$CopyWith<$Res> {
  _$SetSearchBy$CopyWithImpl(
      SetSearchBy$ _value, $Res Function(SetSearchBy$) _then)
      : super(_value, (v) => _then(v as SetSearchBy$));

  @override
  SetSearchBy$ get _value => super._value as SetSearchBy$;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetSearchBy$(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSearchBy$ implements SetSearchBy$ {
  const _$SetSearchBy$(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SetSearchBy(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSearchBy$ &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $SetSearchBy$CopyWith<SetSearchBy$> get copyWith =>
      _$SetSearchBy$CopyWithImpl<SetSearchBy$>(this, _$identity);
}

abstract class SetSearchBy$ implements SetSearchBy {
  const factory SetSearchBy$(String value) = _$SetSearchBy$;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  $SetSearchBy$CopyWith<SetSearchBy$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSearchParamTearOff {
  const _$SetSearchParamTearOff();

  SetSearchParam$ call({required String value}) {
    return SetSearchParam$(
      value: value,
    );
  }
}

/// @nodoc
const $SetSearchParam = _$SetSearchParamTearOff();

/// @nodoc
mixin _$SetSearchParam {
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSearchParamCopyWith<SetSearchParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSearchParamCopyWith<$Res> {
  factory $SetSearchParamCopyWith(
          SetSearchParam value, $Res Function(SetSearchParam) then) =
      _$SetSearchParamCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class _$SetSearchParamCopyWithImpl<$Res>
    implements $SetSearchParamCopyWith<$Res> {
  _$SetSearchParamCopyWithImpl(this._value, this._then);

  final SetSearchParam _value;
  // ignore: unused_field
  final $Res Function(SetSearchParam) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SetSearchParam$CopyWith<$Res>
    implements $SetSearchParamCopyWith<$Res> {
  factory $SetSearchParam$CopyWith(
          SetSearchParam$ value, $Res Function(SetSearchParam$) then) =
      _$SetSearchParam$CopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class _$SetSearchParam$CopyWithImpl<$Res>
    extends _$SetSearchParamCopyWithImpl<$Res>
    implements $SetSearchParam$CopyWith<$Res> {
  _$SetSearchParam$CopyWithImpl(
      SetSearchParam$ _value, $Res Function(SetSearchParam$) _then)
      : super(_value, (v) => _then(v as SetSearchParam$));

  @override
  SetSearchParam$ get _value => super._value as SetSearchParam$;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(SetSearchParam$(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSearchParam$ implements SetSearchParam$ {
  const _$SetSearchParam$({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SetSearchParam(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSearchParam$ &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $SetSearchParam$CopyWith<SetSearchParam$> get copyWith =>
      _$SetSearchParam$CopyWithImpl<SetSearchParam$>(this, _$identity);
}

abstract class SetSearchParam$ implements SetSearchParam {
  const factory SetSearchParam$({required String value}) = _$SetSearchParam$;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  $SetSearchParam$CopyWith<SetSearchParam$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterOrdersTearOff {
  const _$FilterOrdersTearOff();

  FilterOrders$ call() {
    return const FilterOrders$();
  }
}

/// @nodoc
const $FilterOrders = _$FilterOrdersTearOff();

/// @nodoc
mixin _$FilterOrders {}

/// @nodoc
abstract class $FilterOrdersCopyWith<$Res> {
  factory $FilterOrdersCopyWith(
          FilterOrders value, $Res Function(FilterOrders) then) =
      _$FilterOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterOrdersCopyWithImpl<$Res> implements $FilterOrdersCopyWith<$Res> {
  _$FilterOrdersCopyWithImpl(this._value, this._then);

  final FilterOrders _value;
  // ignore: unused_field
  final $Res Function(FilterOrders) _then;
}

/// @nodoc
abstract class $FilterOrders$CopyWith<$Res> {
  factory $FilterOrders$CopyWith(
          FilterOrders$ value, $Res Function(FilterOrders$) then) =
      _$FilterOrders$CopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterOrders$CopyWithImpl<$Res> extends _$FilterOrdersCopyWithImpl<$Res>
    implements $FilterOrders$CopyWith<$Res> {
  _$FilterOrders$CopyWithImpl(
      FilterOrders$ _value, $Res Function(FilterOrders$) _then)
      : super(_value, (v) => _then(v as FilterOrders$));

  @override
  FilterOrders$ get _value => super._value as FilterOrders$;
}

/// @nodoc

class _$FilterOrders$ implements FilterOrders$ {
  const _$FilterOrders$();

  @override
  String toString() {
    return 'FilterOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FilterOrders$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class FilterOrders$ implements FilterOrders {
  const factory FilterOrders$() = _$FilterOrders$;
}

/// @nodoc
class _$SetHigherThanAmountTearOff {
  const _$SetHigherThanAmountTearOff();

  SetHigherThanAmount$ call(double limit) {
    return SetHigherThanAmount$(
      limit,
    );
  }
}

/// @nodoc
const $SetHigherThanAmount = _$SetHigherThanAmountTearOff();

/// @nodoc
mixin _$SetHigherThanAmount {
  double get limit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetHigherThanAmountCopyWith<SetHigherThanAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetHigherThanAmountCopyWith<$Res> {
  factory $SetHigherThanAmountCopyWith(
          SetHigherThanAmount value, $Res Function(SetHigherThanAmount) then) =
      _$SetHigherThanAmountCopyWithImpl<$Res>;
  $Res call({double limit});
}

/// @nodoc
class _$SetHigherThanAmountCopyWithImpl<$Res>
    implements $SetHigherThanAmountCopyWith<$Res> {
  _$SetHigherThanAmountCopyWithImpl(this._value, this._then);

  final SetHigherThanAmount _value;
  // ignore: unused_field
  final $Res Function(SetHigherThanAmount) _then;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $SetHigherThanAmount$CopyWith<$Res>
    implements $SetHigherThanAmountCopyWith<$Res> {
  factory $SetHigherThanAmount$CopyWith(SetHigherThanAmount$ value,
          $Res Function(SetHigherThanAmount$) then) =
      _$SetHigherThanAmount$CopyWithImpl<$Res>;
  @override
  $Res call({double limit});
}

/// @nodoc
class _$SetHigherThanAmount$CopyWithImpl<$Res>
    extends _$SetHigherThanAmountCopyWithImpl<$Res>
    implements $SetHigherThanAmount$CopyWith<$Res> {
  _$SetHigherThanAmount$CopyWithImpl(
      SetHigherThanAmount$ _value, $Res Function(SetHigherThanAmount$) _then)
      : super(_value, (v) => _then(v as SetHigherThanAmount$));

  @override
  SetHigherThanAmount$ get _value => super._value as SetHigherThanAmount$;

  @override
  $Res call({
    Object? limit = freezed,
  }) {
    return _then(SetHigherThanAmount$(
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetHigherThanAmount$ implements SetHigherThanAmount$ {
  const _$SetHigherThanAmount$(this.limit);

  @override
  final double limit;

  @override
  String toString() {
    return 'SetHigherThanAmount(limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetHigherThanAmount$ &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit);

  @JsonKey(ignore: true)
  @override
  $SetHigherThanAmount$CopyWith<SetHigherThanAmount$> get copyWith =>
      _$SetHigherThanAmount$CopyWithImpl<SetHigherThanAmount$>(
          this, _$identity);
}

abstract class SetHigherThanAmount$ implements SetHigherThanAmount {
  const factory SetHigherThanAmount$(double limit) = _$SetHigherThanAmount$;

  @override
  double get limit;
  @override
  @JsonKey(ignore: true)
  $SetHigherThanAmount$CopyWith<SetHigherThanAmount$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetLowerThanAmountTearOff {
  const _$SetLowerThanAmountTearOff();

  SetLowerThanAmount$ call(double amount1) {
    return SetLowerThanAmount$(
      amount1,
    );
  }
}

/// @nodoc
const $SetLowerThanAmount = _$SetLowerThanAmountTearOff();

/// @nodoc
mixin _$SetLowerThanAmount {
  double get amount1 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetLowerThanAmountCopyWith<SetLowerThanAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetLowerThanAmountCopyWith<$Res> {
  factory $SetLowerThanAmountCopyWith(
          SetLowerThanAmount value, $Res Function(SetLowerThanAmount) then) =
      _$SetLowerThanAmountCopyWithImpl<$Res>;
  $Res call({double amount1});
}

/// @nodoc
class _$SetLowerThanAmountCopyWithImpl<$Res>
    implements $SetLowerThanAmountCopyWith<$Res> {
  _$SetLowerThanAmountCopyWithImpl(this._value, this._then);

  final SetLowerThanAmount _value;
  // ignore: unused_field
  final $Res Function(SetLowerThanAmount) _then;

  @override
  $Res call({
    Object? amount1 = freezed,
  }) {
    return _then(_value.copyWith(
      amount1: amount1 == freezed
          ? _value.amount1
          : amount1 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class $SetLowerThanAmount$CopyWith<$Res>
    implements $SetLowerThanAmountCopyWith<$Res> {
  factory $SetLowerThanAmount$CopyWith(
          SetLowerThanAmount$ value, $Res Function(SetLowerThanAmount$) then) =
      _$SetLowerThanAmount$CopyWithImpl<$Res>;
  @override
  $Res call({double amount1});
}

/// @nodoc
class _$SetLowerThanAmount$CopyWithImpl<$Res>
    extends _$SetLowerThanAmountCopyWithImpl<$Res>
    implements $SetLowerThanAmount$CopyWith<$Res> {
  _$SetLowerThanAmount$CopyWithImpl(
      SetLowerThanAmount$ _value, $Res Function(SetLowerThanAmount$) _then)
      : super(_value, (v) => _then(v as SetLowerThanAmount$));

  @override
  SetLowerThanAmount$ get _value => super._value as SetLowerThanAmount$;

  @override
  $Res call({
    Object? amount1 = freezed,
  }) {
    return _then(SetLowerThanAmount$(
      amount1 == freezed
          ? _value.amount1
          : amount1 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetLowerThanAmount$ implements SetLowerThanAmount$ {
  const _$SetLowerThanAmount$(this.amount1);

  @override
  final double amount1;

  @override
  String toString() {
    return 'SetLowerThanAmount(amount1: $amount1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetLowerThanAmount$ &&
            (identical(other.amount1, amount1) || other.amount1 == amount1));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount1);

  @JsonKey(ignore: true)
  @override
  $SetLowerThanAmount$CopyWith<SetLowerThanAmount$> get copyWith =>
      _$SetLowerThanAmount$CopyWithImpl<SetLowerThanAmount$>(this, _$identity);
}

abstract class SetLowerThanAmount$ implements SetLowerThanAmount {
  const factory SetLowerThanAmount$(double amount1) = _$SetLowerThanAmount$;

  @override
  double get amount1;
  @override
  @JsonKey(ignore: true)
  $SetLowerThanAmount$CopyWith<SetLowerThanAmount$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetLowerThanTearOff {
  const _$SetLowerThanTearOff();

  SetLowerThan$ call() {
    return const SetLowerThan$();
  }
}

/// @nodoc
const $SetLowerThan = _$SetLowerThanTearOff();

/// @nodoc
mixin _$SetLowerThan {}

/// @nodoc
abstract class $SetLowerThanCopyWith<$Res> {
  factory $SetLowerThanCopyWith(
          SetLowerThan value, $Res Function(SetLowerThan) then) =
      _$SetLowerThanCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetLowerThanCopyWithImpl<$Res> implements $SetLowerThanCopyWith<$Res> {
  _$SetLowerThanCopyWithImpl(this._value, this._then);

  final SetLowerThan _value;
  // ignore: unused_field
  final $Res Function(SetLowerThan) _then;
}

/// @nodoc
abstract class $SetLowerThan$CopyWith<$Res> {
  factory $SetLowerThan$CopyWith(
          SetLowerThan$ value, $Res Function(SetLowerThan$) then) =
      _$SetLowerThan$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SetLowerThan$CopyWithImpl<$Res> extends _$SetLowerThanCopyWithImpl<$Res>
    implements $SetLowerThan$CopyWith<$Res> {
  _$SetLowerThan$CopyWithImpl(
      SetLowerThan$ _value, $Res Function(SetLowerThan$) _then)
      : super(_value, (v) => _then(v as SetLowerThan$));

  @override
  SetLowerThan$ get _value => super._value as SetLowerThan$;
}

/// @nodoc

class _$SetLowerThan$ implements SetLowerThan$ {
  const _$SetLowerThan$();

  @override
  String toString() {
    return 'SetLowerThan()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SetLowerThan$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetLowerThan$ implements SetLowerThan {
  const factory SetLowerThan$() = _$SetLowerThan$;
}

/// @nodoc
class _$SetHigherThanTearOff {
  const _$SetHigherThanTearOff();

  SetHigherThan$ call() {
    return const SetHigherThan$();
  }
}

/// @nodoc
const $SetHigherThan = _$SetHigherThanTearOff();

/// @nodoc
mixin _$SetHigherThan {}

/// @nodoc
abstract class $SetHigherThanCopyWith<$Res> {
  factory $SetHigherThanCopyWith(
          SetHigherThan value, $Res Function(SetHigherThan) then) =
      _$SetHigherThanCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetHigherThanCopyWithImpl<$Res>
    implements $SetHigherThanCopyWith<$Res> {
  _$SetHigherThanCopyWithImpl(this._value, this._then);

  final SetHigherThan _value;
  // ignore: unused_field
  final $Res Function(SetHigherThan) _then;
}

/// @nodoc
abstract class $SetHigherThan$CopyWith<$Res> {
  factory $SetHigherThan$CopyWith(
          SetHigherThan$ value, $Res Function(SetHigherThan$) then) =
      _$SetHigherThan$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SetHigherThan$CopyWithImpl<$Res>
    extends _$SetHigherThanCopyWithImpl<$Res>
    implements $SetHigherThan$CopyWith<$Res> {
  _$SetHigherThan$CopyWithImpl(
      SetHigherThan$ _value, $Res Function(SetHigherThan$) _then)
      : super(_value, (v) => _then(v as SetHigherThan$));

  @override
  SetHigherThan$ get _value => super._value as SetHigherThan$;
}

/// @nodoc

class _$SetHigherThan$ implements SetHigherThan$ {
  const _$SetHigherThan$();

  @override
  String toString() {
    return 'SetHigherThan()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SetHigherThan$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetHigherThan$ implements SetHigherThan {
  const factory SetHigherThan$() = _$SetHigherThan$;
}

/// @nodoc
class _$SetOnlyUnpaidTearOff {
  const _$SetOnlyUnpaidTearOff();

  SetOnlyUnpaid$ call() {
    return const SetOnlyUnpaid$();
  }
}

/// @nodoc
const $SetOnlyUnpaid = _$SetOnlyUnpaidTearOff();

/// @nodoc
mixin _$SetOnlyUnpaid {}

/// @nodoc
abstract class $SetOnlyUnpaidCopyWith<$Res> {
  factory $SetOnlyUnpaidCopyWith(
          SetOnlyUnpaid value, $Res Function(SetOnlyUnpaid) then) =
      _$SetOnlyUnpaidCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetOnlyUnpaidCopyWithImpl<$Res>
    implements $SetOnlyUnpaidCopyWith<$Res> {
  _$SetOnlyUnpaidCopyWithImpl(this._value, this._then);

  final SetOnlyUnpaid _value;
  // ignore: unused_field
  final $Res Function(SetOnlyUnpaid) _then;
}

/// @nodoc
abstract class $SetOnlyUnpaid$CopyWith<$Res> {
  factory $SetOnlyUnpaid$CopyWith(
          SetOnlyUnpaid$ value, $Res Function(SetOnlyUnpaid$) then) =
      _$SetOnlyUnpaid$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SetOnlyUnpaid$CopyWithImpl<$Res>
    extends _$SetOnlyUnpaidCopyWithImpl<$Res>
    implements $SetOnlyUnpaid$CopyWith<$Res> {
  _$SetOnlyUnpaid$CopyWithImpl(
      SetOnlyUnpaid$ _value, $Res Function(SetOnlyUnpaid$) _then)
      : super(_value, (v) => _then(v as SetOnlyUnpaid$));

  @override
  SetOnlyUnpaid$ get _value => super._value as SetOnlyUnpaid$;
}

/// @nodoc

class _$SetOnlyUnpaid$ implements SetOnlyUnpaid$ {
  const _$SetOnlyUnpaid$();

  @override
  String toString() {
    return 'SetOnlyUnpaid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SetOnlyUnpaid$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetOnlyUnpaid$ implements SetOnlyUnpaid {
  const factory SetOnlyUnpaid$() = _$SetOnlyUnpaid$;
}

/// @nodoc
class _$SetOnlyPaidTearOff {
  const _$SetOnlyPaidTearOff();

  SetOnlyPaid$ call() {
    return const SetOnlyPaid$();
  }
}

/// @nodoc
const $SetOnlyPaid = _$SetOnlyPaidTearOff();

/// @nodoc
mixin _$SetOnlyPaid {}

/// @nodoc
abstract class $SetOnlyPaidCopyWith<$Res> {
  factory $SetOnlyPaidCopyWith(
          SetOnlyPaid value, $Res Function(SetOnlyPaid) then) =
      _$SetOnlyPaidCopyWithImpl<$Res>;
}

/// @nodoc
class _$SetOnlyPaidCopyWithImpl<$Res> implements $SetOnlyPaidCopyWith<$Res> {
  _$SetOnlyPaidCopyWithImpl(this._value, this._then);

  final SetOnlyPaid _value;
  // ignore: unused_field
  final $Res Function(SetOnlyPaid) _then;
}

/// @nodoc
abstract class $SetOnlyPaid$CopyWith<$Res> {
  factory $SetOnlyPaid$CopyWith(
          SetOnlyPaid$ value, $Res Function(SetOnlyPaid$) then) =
      _$SetOnlyPaid$CopyWithImpl<$Res>;
}

/// @nodoc
class _$SetOnlyPaid$CopyWithImpl<$Res> extends _$SetOnlyPaidCopyWithImpl<$Res>
    implements $SetOnlyPaid$CopyWith<$Res> {
  _$SetOnlyPaid$CopyWithImpl(
      SetOnlyPaid$ _value, $Res Function(SetOnlyPaid$) _then)
      : super(_value, (v) => _then(v as SetOnlyPaid$));

  @override
  SetOnlyPaid$ get _value => super._value as SetOnlyPaid$;
}

/// @nodoc

class _$SetOnlyPaid$ implements SetOnlyPaid$ {
  const _$SetOnlyPaid$();

  @override
  String toString() {
    return 'SetOnlyPaid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SetOnlyPaid$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class SetOnlyPaid$ implements SetOnlyPaid {
  const factory SetOnlyPaid$() = _$SetOnlyPaid$;
}
