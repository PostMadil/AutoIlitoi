// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of order_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeleteOrderTearOff {
  const _$DeleteOrderTearOff();

  DeleteOrderStart call() {
    return const DeleteOrderStart();
  }

  DeleteOrderSuccessful successful(Order order) {
    return DeleteOrderSuccessful(
      order,
    );
  }

  DeleteOrderError error(Object error, StackTrace stackTrace) {
    return DeleteOrderError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $DeleteOrder = _$DeleteOrderTearOff();

/// @nodoc
mixin _$DeleteOrder {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Order order) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteOrderStart value) $default, {
    required TResult Function(DeleteOrderSuccessful value) successful,
    required TResult Function(DeleteOrderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteOrderCopyWith<$Res> {
  factory $DeleteOrderCopyWith(
          DeleteOrder value, $Res Function(DeleteOrder) then) =
      _$DeleteOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteOrderCopyWithImpl<$Res> implements $DeleteOrderCopyWith<$Res> {
  _$DeleteOrderCopyWithImpl(this._value, this._then);

  final DeleteOrder _value;
  // ignore: unused_field
  final $Res Function(DeleteOrder) _then;
}

/// @nodoc
abstract class $DeleteOrderStartCopyWith<$Res> {
  factory $DeleteOrderStartCopyWith(
          DeleteOrderStart value, $Res Function(DeleteOrderStart) then) =
      _$DeleteOrderStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteOrderStartCopyWithImpl<$Res>
    extends _$DeleteOrderCopyWithImpl<$Res>
    implements $DeleteOrderStartCopyWith<$Res> {
  _$DeleteOrderStartCopyWithImpl(
      DeleteOrderStart _value, $Res Function(DeleteOrderStart) _then)
      : super(_value, (v) => _then(v as DeleteOrderStart));

  @override
  DeleteOrderStart get _value => super._value as DeleteOrderStart;
}

/// @nodoc

class _$DeleteOrderStart implements DeleteOrderStart {
  const _$DeleteOrderStart();

  @override
  String toString() {
    return 'DeleteOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DeleteOrderStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Order order) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteOrderStart value) $default, {
    required TResult Function(DeleteOrderSuccessful value) successful,
    required TResult Function(DeleteOrderError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DeleteOrderStart implements DeleteOrder {
  const factory DeleteOrderStart() = _$DeleteOrderStart;
}

/// @nodoc
abstract class $DeleteOrderSuccessfulCopyWith<$Res> {
  factory $DeleteOrderSuccessfulCopyWith(DeleteOrderSuccessful value,
          $Res Function(DeleteOrderSuccessful) then) =
      _$DeleteOrderSuccessfulCopyWithImpl<$Res>;
  $Res call({Order order});
}

/// @nodoc
class _$DeleteOrderSuccessfulCopyWithImpl<$Res>
    extends _$DeleteOrderCopyWithImpl<$Res>
    implements $DeleteOrderSuccessfulCopyWith<$Res> {
  _$DeleteOrderSuccessfulCopyWithImpl(
      DeleteOrderSuccessful _value, $Res Function(DeleteOrderSuccessful) _then)
      : super(_value, (v) => _then(v as DeleteOrderSuccessful));

  @override
  DeleteOrderSuccessful get _value => super._value as DeleteOrderSuccessful;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(DeleteOrderSuccessful(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$DeleteOrderSuccessful implements DeleteOrderSuccessful {
  const _$DeleteOrderSuccessful(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'DeleteOrder.successful(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteOrderSuccessful &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  $DeleteOrderSuccessfulCopyWith<DeleteOrderSuccessful> get copyWith =>
      _$DeleteOrderSuccessfulCopyWithImpl<DeleteOrderSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Order order) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteOrderStart value) $default, {
    required TResult Function(DeleteOrderSuccessful value) successful,
    required TResult Function(DeleteOrderError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class DeleteOrderSuccessful implements DeleteOrder {
  const factory DeleteOrderSuccessful(Order order) = _$DeleteOrderSuccessful;

  Order get order;
  @JsonKey(ignore: true)
  $DeleteOrderSuccessfulCopyWith<DeleteOrderSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteOrderErrorCopyWith<$Res> {
  factory $DeleteOrderErrorCopyWith(
          DeleteOrderError value, $Res Function(DeleteOrderError) then) =
      _$DeleteOrderErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$DeleteOrderErrorCopyWithImpl<$Res>
    extends _$DeleteOrderCopyWithImpl<$Res>
    implements $DeleteOrderErrorCopyWith<$Res> {
  _$DeleteOrderErrorCopyWithImpl(
      DeleteOrderError _value, $Res Function(DeleteOrderError) _then)
      : super(_value, (v) => _then(v as DeleteOrderError));

  @override
  DeleteOrderError get _value => super._value as DeleteOrderError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(DeleteOrderError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$DeleteOrderError implements DeleteOrderError {
  const _$DeleteOrderError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DeleteOrder.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteOrderError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $DeleteOrderErrorCopyWith<DeleteOrderError> get copyWith =>
      _$DeleteOrderErrorCopyWithImpl<DeleteOrderError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Order order) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Order order)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteOrderStart value) $default, {
    required TResult Function(DeleteOrderSuccessful value) successful,
    required TResult Function(DeleteOrderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteOrderStart value)? $default, {
    TResult Function(DeleteOrderSuccessful value)? successful,
    TResult Function(DeleteOrderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteOrderError implements DeleteOrder {
  const factory DeleteOrderError(Object error, StackTrace stackTrace) =
      _$DeleteOrderError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $DeleteOrderErrorCopyWith<DeleteOrderError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateOrderTearOff {
  const _$UpdateOrderTearOff();

  UpdateOrderStart call(Order order) {
    return UpdateOrderStart(
      order,
    );
  }

  UpdateOrderSuccessful successful(Order updatedOrder) {
    return UpdateOrderSuccessful(
      updatedOrder,
    );
  }

  UpdateOrderError error(Object error, StackTrace stackTrace) {
    return UpdateOrderError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $UpdateOrder = _$UpdateOrderTearOff();

/// @nodoc
mixin _$UpdateOrder {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Order order) $default, {
    required TResult Function(Order updatedOrder) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateOrderStart value) $default, {
    required TResult Function(UpdateOrderSuccessful value) successful,
    required TResult Function(UpdateOrderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderCopyWith<$Res> {
  factory $UpdateOrderCopyWith(
          UpdateOrder value, $Res Function(UpdateOrder) then) =
      _$UpdateOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateOrderCopyWithImpl<$Res> implements $UpdateOrderCopyWith<$Res> {
  _$UpdateOrderCopyWithImpl(this._value, this._then);

  final UpdateOrder _value;
  // ignore: unused_field
  final $Res Function(UpdateOrder) _then;
}

/// @nodoc
abstract class $UpdateOrderStartCopyWith<$Res> {
  factory $UpdateOrderStartCopyWith(
          UpdateOrderStart value, $Res Function(UpdateOrderStart) then) =
      _$UpdateOrderStartCopyWithImpl<$Res>;
  $Res call({Order order});
}

/// @nodoc
class _$UpdateOrderStartCopyWithImpl<$Res>
    extends _$UpdateOrderCopyWithImpl<$Res>
    implements $UpdateOrderStartCopyWith<$Res> {
  _$UpdateOrderStartCopyWithImpl(
      UpdateOrderStart _value, $Res Function(UpdateOrderStart) _then)
      : super(_value, (v) => _then(v as UpdateOrderStart));

  @override
  UpdateOrderStart get _value => super._value as UpdateOrderStart;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(UpdateOrderStart(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$UpdateOrderStart implements UpdateOrderStart {
  const _$UpdateOrderStart(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'UpdateOrder(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateOrderStart &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  $UpdateOrderStartCopyWith<UpdateOrderStart> get copyWith =>
      _$UpdateOrderStartCopyWithImpl<UpdateOrderStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Order order) $default, {
    required TResult Function(Order updatedOrder) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(order);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(order);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(order);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateOrderStart value) $default, {
    required TResult Function(UpdateOrderSuccessful value) successful,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderStart implements UpdateOrder {
  const factory UpdateOrderStart(Order order) = _$UpdateOrderStart;

  Order get order;
  @JsonKey(ignore: true)
  $UpdateOrderStartCopyWith<UpdateOrderStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderSuccessfulCopyWith<$Res> {
  factory $UpdateOrderSuccessfulCopyWith(UpdateOrderSuccessful value,
          $Res Function(UpdateOrderSuccessful) then) =
      _$UpdateOrderSuccessfulCopyWithImpl<$Res>;
  $Res call({Order updatedOrder});
}

/// @nodoc
class _$UpdateOrderSuccessfulCopyWithImpl<$Res>
    extends _$UpdateOrderCopyWithImpl<$Res>
    implements $UpdateOrderSuccessfulCopyWith<$Res> {
  _$UpdateOrderSuccessfulCopyWithImpl(
      UpdateOrderSuccessful _value, $Res Function(UpdateOrderSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateOrderSuccessful));

  @override
  UpdateOrderSuccessful get _value => super._value as UpdateOrderSuccessful;

  @override
  $Res call({
    Object? updatedOrder = freezed,
  }) {
    return _then(UpdateOrderSuccessful(
      updatedOrder == freezed
          ? _value.updatedOrder
          : updatedOrder // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$UpdateOrderSuccessful implements UpdateOrderSuccessful {
  const _$UpdateOrderSuccessful(this.updatedOrder);

  @override
  final Order updatedOrder;

  @override
  String toString() {
    return 'UpdateOrder.successful(updatedOrder: $updatedOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateOrderSuccessful &&
            (identical(other.updatedOrder, updatedOrder) ||
                other.updatedOrder == updatedOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedOrder);

  @JsonKey(ignore: true)
  @override
  $UpdateOrderSuccessfulCopyWith<UpdateOrderSuccessful> get copyWith =>
      _$UpdateOrderSuccessfulCopyWithImpl<UpdateOrderSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Order order) $default, {
    required TResult Function(Order updatedOrder) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(updatedOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(updatedOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(updatedOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateOrderStart value) $default, {
    required TResult Function(UpdateOrderSuccessful value) successful,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderSuccessful implements UpdateOrder {
  const factory UpdateOrderSuccessful(Order updatedOrder) =
      _$UpdateOrderSuccessful;

  Order get updatedOrder;
  @JsonKey(ignore: true)
  $UpdateOrderSuccessfulCopyWith<UpdateOrderSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOrderErrorCopyWith<$Res> {
  factory $UpdateOrderErrorCopyWith(
          UpdateOrderError value, $Res Function(UpdateOrderError) then) =
      _$UpdateOrderErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$UpdateOrderErrorCopyWithImpl<$Res>
    extends _$UpdateOrderCopyWithImpl<$Res>
    implements $UpdateOrderErrorCopyWith<$Res> {
  _$UpdateOrderErrorCopyWithImpl(
      UpdateOrderError _value, $Res Function(UpdateOrderError) _then)
      : super(_value, (v) => _then(v as UpdateOrderError));

  @override
  UpdateOrderError get _value => super._value as UpdateOrderError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(UpdateOrderError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$UpdateOrderError implements UpdateOrderError {
  const _$UpdateOrderError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateOrder.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateOrderError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $UpdateOrderErrorCopyWith<UpdateOrderError> get copyWith =>
      _$UpdateOrderErrorCopyWithImpl<UpdateOrderError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Order order) $default, {
    required TResult Function(Order updatedOrder) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Order order)? $default, {
    TResult Function(Order updatedOrder)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateOrderStart value) $default, {
    required TResult Function(UpdateOrderSuccessful value) successful,
    required TResult Function(UpdateOrderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateOrderStart value)? $default, {
    TResult Function(UpdateOrderSuccessful value)? successful,
    TResult Function(UpdateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateOrderError implements UpdateOrder {
  const factory UpdateOrderError(Object error, StackTrace stackTrace) =
      _$UpdateOrderError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $UpdateOrderErrorCopyWith<UpdateOrderError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateOrderTearOff {
  const _$CreateOrderTearOff();

  CreateOrderStart call(
      {required OrderDetails details, required List<CarPart> items}) {
    return CreateOrderStart(
      details: details,
      items: items,
    );
  }

  CreateOrderSuccessful successful() {
    return const CreateOrderSuccessful();
  }

  CreateOrderError error(Object error, StackTrace stackTrace) {
    return CreateOrderError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $CreateOrder = _$CreateOrderTearOff();

/// @nodoc
mixin _$CreateOrder {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateOrderStart value) $default, {
    required TResult Function(CreateOrderSuccessful value) successful,
    required TResult Function(CreateOrderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderCopyWith<$Res> {
  factory $CreateOrderCopyWith(
          CreateOrder value, $Res Function(CreateOrder) then) =
      _$CreateOrderCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOrderCopyWithImpl<$Res> implements $CreateOrderCopyWith<$Res> {
  _$CreateOrderCopyWithImpl(this._value, this._then);

  final CreateOrder _value;
  // ignore: unused_field
  final $Res Function(CreateOrder) _then;
}

/// @nodoc
abstract class $CreateOrderStartCopyWith<$Res> {
  factory $CreateOrderStartCopyWith(
          CreateOrderStart value, $Res Function(CreateOrderStart) then) =
      _$CreateOrderStartCopyWithImpl<$Res>;
  $Res call({OrderDetails details, List<CarPart> items});
}

/// @nodoc
class _$CreateOrderStartCopyWithImpl<$Res>
    extends _$CreateOrderCopyWithImpl<$Res>
    implements $CreateOrderStartCopyWith<$Res> {
  _$CreateOrderStartCopyWithImpl(
      CreateOrderStart _value, $Res Function(CreateOrderStart) _then)
      : super(_value, (v) => _then(v as CreateOrderStart));

  @override
  CreateOrderStart get _value => super._value as CreateOrderStart;

  @override
  $Res call({
    Object? details = freezed,
    Object? items = freezed,
  }) {
    return _then(CreateOrderStart(
      details: details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as OrderDetails,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CarPart>,
    ));
  }
}

/// @nodoc

class _$CreateOrderStart implements CreateOrderStart {
  const _$CreateOrderStart({required this.details, required this.items});

  @override
  final OrderDetails details;
  @override
  final List<CarPart> items;

  @override
  String toString() {
    return 'CreateOrder(details: $details, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderStart &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, details, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  $CreateOrderStartCopyWith<CreateOrderStart> get copyWith =>
      _$CreateOrderStartCopyWithImpl<CreateOrderStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(details, items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(details, items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(details, items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateOrderStart value) $default, {
    required TResult Function(CreateOrderSuccessful value) successful,
    required TResult Function(CreateOrderError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateOrderStart implements CreateOrder {
  const factory CreateOrderStart(
      {required OrderDetails details,
      required List<CarPart> items}) = _$CreateOrderStart;

  OrderDetails get details;
  List<CarPart> get items;
  @JsonKey(ignore: true)
  $CreateOrderStartCopyWith<CreateOrderStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderSuccessfulCopyWith<$Res> {
  factory $CreateOrderSuccessfulCopyWith(CreateOrderSuccessful value,
          $Res Function(CreateOrderSuccessful) then) =
      _$CreateOrderSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateOrderSuccessfulCopyWithImpl<$Res>
    extends _$CreateOrderCopyWithImpl<$Res>
    implements $CreateOrderSuccessfulCopyWith<$Res> {
  _$CreateOrderSuccessfulCopyWithImpl(
      CreateOrderSuccessful _value, $Res Function(CreateOrderSuccessful) _then)
      : super(_value, (v) => _then(v as CreateOrderSuccessful));

  @override
  CreateOrderSuccessful get _value => super._value as CreateOrderSuccessful;
}

/// @nodoc

class _$CreateOrderSuccessful implements CreateOrderSuccessful {
  const _$CreateOrderSuccessful();

  @override
  String toString() {
    return 'CreateOrder.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CreateOrderSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateOrderStart value) $default, {
    required TResult Function(CreateOrderSuccessful value) successful,
    required TResult Function(CreateOrderError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateOrderSuccessful implements CreateOrder {
  const factory CreateOrderSuccessful() = _$CreateOrderSuccessful;
}

/// @nodoc
abstract class $CreateOrderErrorCopyWith<$Res> {
  factory $CreateOrderErrorCopyWith(
          CreateOrderError value, $Res Function(CreateOrderError) then) =
      _$CreateOrderErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateOrderErrorCopyWithImpl<$Res>
    extends _$CreateOrderCopyWithImpl<$Res>
    implements $CreateOrderErrorCopyWith<$Res> {
  _$CreateOrderErrorCopyWithImpl(
      CreateOrderError _value, $Res Function(CreateOrderError) _then)
      : super(_value, (v) => _then(v as CreateOrderError));

  @override
  CreateOrderError get _value => super._value as CreateOrderError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CreateOrderError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$CreateOrderError implements CreateOrderError {
  const _$CreateOrderError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateOrder.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateOrderError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $CreateOrderErrorCopyWith<CreateOrderError> get copyWith =>
      _$CreateOrderErrorCopyWithImpl<CreateOrderError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(OrderDetails details, List<CarPart> items)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateOrderStart value) $default, {
    required TResult Function(CreateOrderSuccessful value) successful,
    required TResult Function(CreateOrderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateOrderStart value)? $default, {
    TResult Function(CreateOrderSuccessful value)? successful,
    TResult Function(CreateOrderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateOrderError implements CreateOrder {
  const factory CreateOrderError(Object error, StackTrace stackTrace) =
      _$CreateOrderError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $CreateOrderErrorCopyWith<CreateOrderError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetOrdersTearOff {
  const _$GetOrdersTearOff();

  GetOrdersStart call() {
    return const GetOrdersStart();
  }

  GetOrdersSuccessful successful(List<Order> orders) {
    return GetOrdersSuccessful(
      orders,
    );
  }

  GetOrdersError error(Object error, StackTrace stackTrace) {
    return GetOrdersError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetOrders = _$GetOrdersTearOff();

/// @nodoc
mixin _$GetOrders {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetOrdersStart value) $default, {
    required TResult Function(GetOrdersSuccessful value) successful,
    required TResult Function(GetOrdersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersCopyWith<$Res> {
  factory $GetOrdersCopyWith(GetOrders value, $Res Function(GetOrders) then) =
      _$GetOrdersCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOrdersCopyWithImpl<$Res> implements $GetOrdersCopyWith<$Res> {
  _$GetOrdersCopyWithImpl(this._value, this._then);

  final GetOrders _value;
  // ignore: unused_field
  final $Res Function(GetOrders) _then;
}

/// @nodoc
abstract class $GetOrdersStartCopyWith<$Res> {
  factory $GetOrdersStartCopyWith(
          GetOrdersStart value, $Res Function(GetOrdersStart) then) =
      _$GetOrdersStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetOrdersStartCopyWithImpl<$Res> extends _$GetOrdersCopyWithImpl<$Res>
    implements $GetOrdersStartCopyWith<$Res> {
  _$GetOrdersStartCopyWithImpl(
      GetOrdersStart _value, $Res Function(GetOrdersStart) _then)
      : super(_value, (v) => _then(v as GetOrdersStart));

  @override
  GetOrdersStart get _value => super._value as GetOrdersStart;
}

/// @nodoc

class _$GetOrdersStart implements GetOrdersStart {
  const _$GetOrdersStart();

  @override
  String toString() {
    return 'GetOrders()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetOrdersStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetOrdersStart value) $default, {
    required TResult Function(GetOrdersSuccessful value) successful,
    required TResult Function(GetOrdersError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetOrdersStart implements GetOrders {
  const factory GetOrdersStart() = _$GetOrdersStart;
}

/// @nodoc
abstract class $GetOrdersSuccessfulCopyWith<$Res> {
  factory $GetOrdersSuccessfulCopyWith(
          GetOrdersSuccessful value, $Res Function(GetOrdersSuccessful) then) =
      _$GetOrdersSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Order> orders});
}

/// @nodoc
class _$GetOrdersSuccessfulCopyWithImpl<$Res>
    extends _$GetOrdersCopyWithImpl<$Res>
    implements $GetOrdersSuccessfulCopyWith<$Res> {
  _$GetOrdersSuccessfulCopyWithImpl(
      GetOrdersSuccessful _value, $Res Function(GetOrdersSuccessful) _then)
      : super(_value, (v) => _then(v as GetOrdersSuccessful));

  @override
  GetOrdersSuccessful get _value => super._value as GetOrdersSuccessful;

  @override
  $Res call({
    Object? orders = freezed,
  }) {
    return _then(GetOrdersSuccessful(
      orders == freezed
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$GetOrdersSuccessful implements GetOrdersSuccessful {
  const _$GetOrdersSuccessful(this.orders);

  @override
  final List<Order> orders;

  @override
  String toString() {
    return 'GetOrders.successful(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetOrdersSuccessful &&
            const DeepCollectionEquality().equals(other.orders, orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(orders));

  @JsonKey(ignore: true)
  @override
  $GetOrdersSuccessfulCopyWith<GetOrdersSuccessful> get copyWith =>
      _$GetOrdersSuccessfulCopyWithImpl<GetOrdersSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetOrdersStart value) $default, {
    required TResult Function(GetOrdersSuccessful value) successful,
    required TResult Function(GetOrdersError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetOrdersSuccessful implements GetOrders {
  const factory GetOrdersSuccessful(List<Order> orders) = _$GetOrdersSuccessful;

  List<Order> get orders;
  @JsonKey(ignore: true)
  $GetOrdersSuccessfulCopyWith<GetOrdersSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrdersErrorCopyWith<$Res> {
  factory $GetOrdersErrorCopyWith(
          GetOrdersError value, $Res Function(GetOrdersError) then) =
      _$GetOrdersErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetOrdersErrorCopyWithImpl<$Res> extends _$GetOrdersCopyWithImpl<$Res>
    implements $GetOrdersErrorCopyWith<$Res> {
  _$GetOrdersErrorCopyWithImpl(
      GetOrdersError _value, $Res Function(GetOrdersError) _then)
      : super(_value, (v) => _then(v as GetOrdersError));

  @override
  GetOrdersError get _value => super._value as GetOrdersError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetOrdersError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetOrdersError implements GetOrdersError {
  const _$GetOrdersError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetOrders.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetOrdersError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetOrdersErrorCopyWith<GetOrdersError> get copyWith =>
      _$GetOrdersErrorCopyWithImpl<GetOrdersError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Order> orders) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Order> orders)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetOrdersStart value) $default, {
    required TResult Function(GetOrdersSuccessful value) successful,
    required TResult Function(GetOrdersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetOrdersStart value)? $default, {
    TResult Function(GetOrdersSuccessful value)? successful,
    TResult Function(GetOrdersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetOrdersError implements GetOrders {
  const factory GetOrdersError(Object error, StackTrace stackTrace) =
      _$GetOrdersError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetOrdersErrorCopyWith<GetOrdersError> get copyWith =>
      throw _privateConstructorUsedError;
}
