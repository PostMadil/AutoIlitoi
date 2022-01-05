// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of app_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SetSelectedViewTearOff {
  const _$SetSelectedViewTearOff();

  SetSelectedView$ call(int selectedView) {
    return SetSelectedView$(
      selectedView,
    );
  }
}

/// @nodoc
const $SetSelectedView = _$SetSelectedViewTearOff();

/// @nodoc
mixin _$SetSelectedView {
  int get selectedView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedViewCopyWith<SetSelectedView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedViewCopyWith<$Res> {
  factory $SetSelectedViewCopyWith(
          SetSelectedView value, $Res Function(SetSelectedView) then) =
      _$SetSelectedViewCopyWithImpl<$Res>;
  $Res call({int selectedView});
}

/// @nodoc
class _$SetSelectedViewCopyWithImpl<$Res>
    implements $SetSelectedViewCopyWith<$Res> {
  _$SetSelectedViewCopyWithImpl(this._value, this._then);

  final SetSelectedView _value;
  // ignore: unused_field
  final $Res Function(SetSelectedView) _then;

  @override
  $Res call({
    Object? selectedView = freezed,
  }) {
    return _then(_value.copyWith(
      selectedView: selectedView == freezed
          ? _value.selectedView
          : selectedView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedView$CopyWith<$Res>
    implements $SetSelectedViewCopyWith<$Res> {
  factory $SetSelectedView$CopyWith(
          SetSelectedView$ value, $Res Function(SetSelectedView$) then) =
      _$SetSelectedView$CopyWithImpl<$Res>;
  @override
  $Res call({int selectedView});
}

/// @nodoc
class _$SetSelectedView$CopyWithImpl<$Res>
    extends _$SetSelectedViewCopyWithImpl<$Res>
    implements $SetSelectedView$CopyWith<$Res> {
  _$SetSelectedView$CopyWithImpl(
      SetSelectedView$ _value, $Res Function(SetSelectedView$) _then)
      : super(_value, (v) => _then(v as SetSelectedView$));

  @override
  SetSelectedView$ get _value => super._value as SetSelectedView$;

  @override
  $Res call({
    Object? selectedView = freezed,
  }) {
    return _then(SetSelectedView$(
      selectedView == freezed
          ? _value.selectedView
          : selectedView // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetSelectedView$ implements SetSelectedView$ {
  const _$SetSelectedView$(this.selectedView);

  @override
  final int selectedView;

  @override
  String toString() {
    return 'SetSelectedView(selectedView: $selectedView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSelectedView$ &&
            (identical(other.selectedView, selectedView) ||
                other.selectedView == selectedView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedView);

  @JsonKey(ignore: true)
  @override
  $SetSelectedView$CopyWith<SetSelectedView$> get copyWith =>
      _$SetSelectedView$CopyWithImpl<SetSelectedView$>(this, _$identity);
}

abstract class SetSelectedView$ implements SetSelectedView {
  const factory SetSelectedView$(int selectedView) = _$SetSelectedView$;

  @override
  int get selectedView;
  @override
  @JsonKey(ignore: true)
  $SetSelectedView$CopyWith<SetSelectedView$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSelectedOrderTearOff {
  const _$SetSelectedOrderTearOff();

  SetSelectedOrder$ call(Order order) {
    return SetSelectedOrder$(
      order,
    );
  }
}

/// @nodoc
const $SetSelectedOrder = _$SetSelectedOrderTearOff();

/// @nodoc
mixin _$SetSelectedOrder {
  Order get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedOrderCopyWith<SetSelectedOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedOrderCopyWith<$Res> {
  factory $SetSelectedOrderCopyWith(
          SetSelectedOrder value, $Res Function(SetSelectedOrder) then) =
      _$SetSelectedOrderCopyWithImpl<$Res>;
  $Res call({Order order});
}

/// @nodoc
class _$SetSelectedOrderCopyWithImpl<$Res>
    implements $SetSelectedOrderCopyWith<$Res> {
  _$SetSelectedOrderCopyWithImpl(this._value, this._then);

  final SetSelectedOrder _value;
  // ignore: unused_field
  final $Res Function(SetSelectedOrder) _then;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedOrder$CopyWith<$Res>
    implements $SetSelectedOrderCopyWith<$Res> {
  factory $SetSelectedOrder$CopyWith(
          SetSelectedOrder$ value, $Res Function(SetSelectedOrder$) then) =
      _$SetSelectedOrder$CopyWithImpl<$Res>;
  @override
  $Res call({Order order});
}

/// @nodoc
class _$SetSelectedOrder$CopyWithImpl<$Res>
    extends _$SetSelectedOrderCopyWithImpl<$Res>
    implements $SetSelectedOrder$CopyWith<$Res> {
  _$SetSelectedOrder$CopyWithImpl(
      SetSelectedOrder$ _value, $Res Function(SetSelectedOrder$) _then)
      : super(_value, (v) => _then(v as SetSelectedOrder$));

  @override
  SetSelectedOrder$ get _value => super._value as SetSelectedOrder$;

  @override
  $Res call({
    Object? order = freezed,
  }) {
    return _then(SetSelectedOrder$(
      order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as Order,
    ));
  }
}

/// @nodoc

class _$SetSelectedOrder$ implements SetSelectedOrder$ {
  const _$SetSelectedOrder$(this.order);

  @override
  final Order order;

  @override
  String toString() {
    return 'SetSelectedOrder(order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSelectedOrder$ &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  @JsonKey(ignore: true)
  @override
  $SetSelectedOrder$CopyWith<SetSelectedOrder$> get copyWith =>
      _$SetSelectedOrder$CopyWithImpl<SetSelectedOrder$>(this, _$identity);
}

abstract class SetSelectedOrder$ implements SetSelectedOrder {
  const factory SetSelectedOrder$(Order order) = _$SetSelectedOrder$;

  @override
  Order get order;
  @override
  @JsonKey(ignore: true)
  $SetSelectedOrder$CopyWith<SetSelectedOrder$> get copyWith =>
      throw _privateConstructorUsedError;
}
