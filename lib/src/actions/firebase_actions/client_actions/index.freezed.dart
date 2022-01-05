// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of client_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetClientsTearOff {
  const _$GetClientsTearOff();

  GetClientsStart call() {
    return const GetClientsStart();
  }

  GetClientsSuccessful successful(List<Client> clients) {
    return GetClientsSuccessful(
      clients,
    );
  }

  GetClientsError error(Object error, StackTrace stackTrace) {
    return GetClientsError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $GetClients = _$GetClientsTearOff();

/// @nodoc
mixin _$GetClients {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Client> clients) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetClientsStart value) $default, {
    required TResult Function(GetClientsSuccessful value) successful,
    required TResult Function(GetClientsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientsCopyWith<$Res> {
  factory $GetClientsCopyWith(
          GetClients value, $Res Function(GetClients) then) =
      _$GetClientsCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetClientsCopyWithImpl<$Res> implements $GetClientsCopyWith<$Res> {
  _$GetClientsCopyWithImpl(this._value, this._then);

  final GetClients _value;
  // ignore: unused_field
  final $Res Function(GetClients) _then;
}

/// @nodoc
abstract class $GetClientsStartCopyWith<$Res> {
  factory $GetClientsStartCopyWith(
          GetClientsStart value, $Res Function(GetClientsStart) then) =
      _$GetClientsStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetClientsStartCopyWithImpl<$Res> extends _$GetClientsCopyWithImpl<$Res>
    implements $GetClientsStartCopyWith<$Res> {
  _$GetClientsStartCopyWithImpl(
      GetClientsStart _value, $Res Function(GetClientsStart) _then)
      : super(_value, (v) => _then(v as GetClientsStart));

  @override
  GetClientsStart get _value => super._value as GetClientsStart;
}

/// @nodoc

class _$GetClientsStart implements GetClientsStart {
  const _$GetClientsStart();

  @override
  String toString() {
    return 'GetClients()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetClientsStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Client> clients) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
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
    TResult Function(GetClientsStart value) $default, {
    required TResult Function(GetClientsSuccessful value) successful,
    required TResult Function(GetClientsError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetClientsStart implements GetClients {
  const factory GetClientsStart() = _$GetClientsStart;
}

/// @nodoc
abstract class $GetClientsSuccessfulCopyWith<$Res> {
  factory $GetClientsSuccessfulCopyWith(GetClientsSuccessful value,
          $Res Function(GetClientsSuccessful) then) =
      _$GetClientsSuccessfulCopyWithImpl<$Res>;
  $Res call({List<Client> clients});
}

/// @nodoc
class _$GetClientsSuccessfulCopyWithImpl<$Res>
    extends _$GetClientsCopyWithImpl<$Res>
    implements $GetClientsSuccessfulCopyWith<$Res> {
  _$GetClientsSuccessfulCopyWithImpl(
      GetClientsSuccessful _value, $Res Function(GetClientsSuccessful) _then)
      : super(_value, (v) => _then(v as GetClientsSuccessful));

  @override
  GetClientsSuccessful get _value => super._value as GetClientsSuccessful;

  @override
  $Res call({
    Object? clients = freezed,
  }) {
    return _then(GetClientsSuccessful(
      clients == freezed
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<Client>,
    ));
  }
}

/// @nodoc

class _$GetClientsSuccessful implements GetClientsSuccessful {
  const _$GetClientsSuccessful(this.clients);

  @override
  final List<Client> clients;

  @override
  String toString() {
    return 'GetClients.successful(clients: $clients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetClientsSuccessful &&
            const DeepCollectionEquality().equals(other.clients, clients));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clients));

  @JsonKey(ignore: true)
  @override
  $GetClientsSuccessfulCopyWith<GetClientsSuccessful> get copyWith =>
      _$GetClientsSuccessfulCopyWithImpl<GetClientsSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Client> clients) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(clients);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(clients);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(clients);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetClientsStart value) $default, {
    required TResult Function(GetClientsSuccessful value) successful,
    required TResult Function(GetClientsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetClientsSuccessful implements GetClients {
  const factory GetClientsSuccessful(List<Client> clients) =
      _$GetClientsSuccessful;

  List<Client> get clients;
  @JsonKey(ignore: true)
  $GetClientsSuccessfulCopyWith<GetClientsSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClientsErrorCopyWith<$Res> {
  factory $GetClientsErrorCopyWith(
          GetClientsError value, $Res Function(GetClientsError) then) =
      _$GetClientsErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$GetClientsErrorCopyWithImpl<$Res> extends _$GetClientsCopyWithImpl<$Res>
    implements $GetClientsErrorCopyWith<$Res> {
  _$GetClientsErrorCopyWithImpl(
      GetClientsError _value, $Res Function(GetClientsError) _then)
      : super(_value, (v) => _then(v as GetClientsError));

  @override
  GetClientsError get _value => super._value as GetClientsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(GetClientsError(
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

class _$GetClientsError implements GetClientsError {
  const _$GetClientsError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetClients.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetClientsError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $GetClientsErrorCopyWith<GetClientsError> get copyWith =>
      _$GetClientsErrorCopyWithImpl<GetClientsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Client> clients) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Client> clients)? successful,
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
    TResult Function(GetClientsStart value) $default, {
    required TResult Function(GetClientsSuccessful value) successful,
    required TResult Function(GetClientsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetClientsStart value)? $default, {
    TResult Function(GetClientsSuccessful value)? successful,
    TResult Function(GetClientsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetClientsError implements GetClients {
  const factory GetClientsError(Object error, StackTrace stackTrace) =
      _$GetClientsError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $GetClientsErrorCopyWith<GetClientsError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UpdateClientTearOff {
  const _$UpdateClientTearOff();

  UpdateClientStart call(Client client) {
    return UpdateClientStart(
      client,
    );
  }

  UpdateClientSuccessful successful() {
    return const UpdateClientSuccessful();
  }

  UpdateClientError error(Object error, StackTrace stackTrace) {
    return UpdateClientError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $UpdateClient = _$UpdateClientTearOff();

/// @nodoc
mixin _$UpdateClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateClientStart value) $default, {
    required TResult Function(UpdateClientSuccessful value) successful,
    required TResult Function(UpdateClientError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClientCopyWith<$Res> {
  factory $UpdateClientCopyWith(
          UpdateClient value, $Res Function(UpdateClient) then) =
      _$UpdateClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateClientCopyWithImpl<$Res> implements $UpdateClientCopyWith<$Res> {
  _$UpdateClientCopyWithImpl(this._value, this._then);

  final UpdateClient _value;
  // ignore: unused_field
  final $Res Function(UpdateClient) _then;
}

/// @nodoc
abstract class $UpdateClientStartCopyWith<$Res> {
  factory $UpdateClientStartCopyWith(
          UpdateClientStart value, $Res Function(UpdateClientStart) then) =
      _$UpdateClientStartCopyWithImpl<$Res>;
  $Res call({Client client});
}

/// @nodoc
class _$UpdateClientStartCopyWithImpl<$Res>
    extends _$UpdateClientCopyWithImpl<$Res>
    implements $UpdateClientStartCopyWith<$Res> {
  _$UpdateClientStartCopyWithImpl(
      UpdateClientStart _value, $Res Function(UpdateClientStart) _then)
      : super(_value, (v) => _then(v as UpdateClientStart));

  @override
  UpdateClientStart get _value => super._value as UpdateClientStart;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(UpdateClientStart(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$UpdateClientStart implements UpdateClientStart {
  const _$UpdateClientStart(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'UpdateClient(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateClientStart &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  $UpdateClientStartCopyWith<UpdateClientStart> get copyWith =>
      _$UpdateClientStartCopyWithImpl<UpdateClientStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UpdateClientStart value) $default, {
    required TResult Function(UpdateClientSuccessful value) successful,
    required TResult Function(UpdateClientError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class UpdateClientStart implements UpdateClient {
  const factory UpdateClientStart(Client client) = _$UpdateClientStart;

  Client get client;
  @JsonKey(ignore: true)
  $UpdateClientStartCopyWith<UpdateClientStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateClientSuccessfulCopyWith<$Res> {
  factory $UpdateClientSuccessfulCopyWith(UpdateClientSuccessful value,
          $Res Function(UpdateClientSuccessful) then) =
      _$UpdateClientSuccessfulCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateClientSuccessfulCopyWithImpl<$Res>
    extends _$UpdateClientCopyWithImpl<$Res>
    implements $UpdateClientSuccessfulCopyWith<$Res> {
  _$UpdateClientSuccessfulCopyWithImpl(UpdateClientSuccessful _value,
      $Res Function(UpdateClientSuccessful) _then)
      : super(_value, (v) => _then(v as UpdateClientSuccessful));

  @override
  UpdateClientSuccessful get _value => super._value as UpdateClientSuccessful;
}

/// @nodoc

class _$UpdateClientSuccessful implements UpdateClientSuccessful {
  const _$UpdateClientSuccessful();

  @override
  String toString() {
    return 'UpdateClient.successful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UpdateClientSuccessful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
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
    TResult Function(UpdateClientStart value) $default, {
    required TResult Function(UpdateClientSuccessful value) successful,
    required TResult Function(UpdateClientError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class UpdateClientSuccessful implements UpdateClient {
  const factory UpdateClientSuccessful() = _$UpdateClientSuccessful;
}

/// @nodoc
abstract class $UpdateClientErrorCopyWith<$Res> {
  factory $UpdateClientErrorCopyWith(
          UpdateClientError value, $Res Function(UpdateClientError) then) =
      _$UpdateClientErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$UpdateClientErrorCopyWithImpl<$Res>
    extends _$UpdateClientCopyWithImpl<$Res>
    implements $UpdateClientErrorCopyWith<$Res> {
  _$UpdateClientErrorCopyWithImpl(
      UpdateClientError _value, $Res Function(UpdateClientError) _then)
      : super(_value, (v) => _then(v as UpdateClientError));

  @override
  UpdateClientError get _value => super._value as UpdateClientError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(UpdateClientError(
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

class _$UpdateClientError implements UpdateClientError {
  const _$UpdateClientError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'UpdateClient.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateClientError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $UpdateClientErrorCopyWith<UpdateClientError> get copyWith =>
      _$UpdateClientErrorCopyWithImpl<UpdateClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function() successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function()? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
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
    TResult Function(UpdateClientStart value) $default, {
    required TResult Function(UpdateClientSuccessful value) successful,
    required TResult Function(UpdateClientError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UpdateClientStart value)? $default, {
    TResult Function(UpdateClientSuccessful value)? successful,
    TResult Function(UpdateClientError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateClientError implements UpdateClient {
  const factory UpdateClientError(Object error, StackTrace stackTrace) =
      _$UpdateClientError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $UpdateClientErrorCopyWith<UpdateClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DeleteClientTearOff {
  const _$DeleteClientTearOff();

  DeleteClientStart call(Client client) {
    return DeleteClientStart(
      client,
    );
  }

  DeleteClientSuccessful successful(Client client) {
    return DeleteClientSuccessful(
      client,
    );
  }

  DeleteClientError error(Object error, StackTrace stackTrace) {
    return DeleteClientError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $DeleteClient = _$DeleteClientTearOff();

/// @nodoc
mixin _$DeleteClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteClientStart value) $default, {
    required TResult Function(DeleteClientSuccessful value) successful,
    required TResult Function(DeleteClientError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteClientCopyWith<$Res> {
  factory $DeleteClientCopyWith(
          DeleteClient value, $Res Function(DeleteClient) then) =
      _$DeleteClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeleteClientCopyWithImpl<$Res> implements $DeleteClientCopyWith<$Res> {
  _$DeleteClientCopyWithImpl(this._value, this._then);

  final DeleteClient _value;
  // ignore: unused_field
  final $Res Function(DeleteClient) _then;
}

/// @nodoc
abstract class $DeleteClientStartCopyWith<$Res> {
  factory $DeleteClientStartCopyWith(
          DeleteClientStart value, $Res Function(DeleteClientStart) then) =
      _$DeleteClientStartCopyWithImpl<$Res>;
  $Res call({Client client});
}

/// @nodoc
class _$DeleteClientStartCopyWithImpl<$Res>
    extends _$DeleteClientCopyWithImpl<$Res>
    implements $DeleteClientStartCopyWith<$Res> {
  _$DeleteClientStartCopyWithImpl(
      DeleteClientStart _value, $Res Function(DeleteClientStart) _then)
      : super(_value, (v) => _then(v as DeleteClientStart));

  @override
  DeleteClientStart get _value => super._value as DeleteClientStart;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(DeleteClientStart(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$DeleteClientStart implements DeleteClientStart {
  const _$DeleteClientStart(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'DeleteClient(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteClientStart &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  $DeleteClientStartCopyWith<DeleteClientStart> get copyWith =>
      _$DeleteClientStartCopyWithImpl<DeleteClientStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteClientStart value) $default, {
    required TResult Function(DeleteClientSuccessful value) successful,
    required TResult Function(DeleteClientError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DeleteClientStart implements DeleteClient {
  const factory DeleteClientStart(Client client) = _$DeleteClientStart;

  Client get client;
  @JsonKey(ignore: true)
  $DeleteClientStartCopyWith<DeleteClientStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteClientSuccessfulCopyWith<$Res> {
  factory $DeleteClientSuccessfulCopyWith(DeleteClientSuccessful value,
          $Res Function(DeleteClientSuccessful) then) =
      _$DeleteClientSuccessfulCopyWithImpl<$Res>;
  $Res call({Client client});
}

/// @nodoc
class _$DeleteClientSuccessfulCopyWithImpl<$Res>
    extends _$DeleteClientCopyWithImpl<$Res>
    implements $DeleteClientSuccessfulCopyWith<$Res> {
  _$DeleteClientSuccessfulCopyWithImpl(DeleteClientSuccessful _value,
      $Res Function(DeleteClientSuccessful) _then)
      : super(_value, (v) => _then(v as DeleteClientSuccessful));

  @override
  DeleteClientSuccessful get _value => super._value as DeleteClientSuccessful;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(DeleteClientSuccessful(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$DeleteClientSuccessful implements DeleteClientSuccessful {
  const _$DeleteClientSuccessful(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'DeleteClient.successful(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteClientSuccessful &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  $DeleteClientSuccessfulCopyWith<DeleteClientSuccessful> get copyWith =>
      _$DeleteClientSuccessfulCopyWithImpl<DeleteClientSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DeleteClientStart value) $default, {
    required TResult Function(DeleteClientSuccessful value) successful,
    required TResult Function(DeleteClientError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class DeleteClientSuccessful implements DeleteClient {
  const factory DeleteClientSuccessful(Client client) =
      _$DeleteClientSuccessful;

  Client get client;
  @JsonKey(ignore: true)
  $DeleteClientSuccessfulCopyWith<DeleteClientSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteClientErrorCopyWith<$Res> {
  factory $DeleteClientErrorCopyWith(
          DeleteClientError value, $Res Function(DeleteClientError) then) =
      _$DeleteClientErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$DeleteClientErrorCopyWithImpl<$Res>
    extends _$DeleteClientCopyWithImpl<$Res>
    implements $DeleteClientErrorCopyWith<$Res> {
  _$DeleteClientErrorCopyWithImpl(
      DeleteClientError _value, $Res Function(DeleteClientError) _then)
      : super(_value, (v) => _then(v as DeleteClientError));

  @override
  DeleteClientError get _value => super._value as DeleteClientError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(DeleteClientError(
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

class _$DeleteClientError implements DeleteClientError {
  const _$DeleteClientError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'DeleteClient.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DeleteClientError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $DeleteClientErrorCopyWith<DeleteClientError> get copyWith =>
      _$DeleteClientErrorCopyWithImpl<DeleteClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(Client client) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(Client client)? $default, {
    TResult Function(Client client)? successful,
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
    TResult Function(DeleteClientStart value) $default, {
    required TResult Function(DeleteClientSuccessful value) successful,
    required TResult Function(DeleteClientError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DeleteClientStart value)? $default, {
    TResult Function(DeleteClientSuccessful value)? successful,
    TResult Function(DeleteClientError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class DeleteClientError implements DeleteClient {
  const factory DeleteClientError(Object error, StackTrace stackTrace) =
      _$DeleteClientError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $DeleteClientErrorCopyWith<DeleteClientError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateClientTearOff {
  const _$CreateClientTearOff();

  CreateClientStart call({required String name, required String phoneNumber}) {
    return CreateClientStart(
      name: name,
      phoneNumber: phoneNumber,
    );
  }

  CreateClientSuccessful successful(Client client) {
    return CreateClientSuccessful(
      client,
    );
  }

  CreateClientError error(Object error, StackTrace stackTrace) {
    return CreateClientError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $CreateClient = _$CreateClientTearOff();

/// @nodoc
mixin _$CreateClient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String phoneNumber) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateClientStart value) $default, {
    required TResult Function(CreateClientSuccessful value) successful,
    required TResult Function(CreateClientError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClientCopyWith<$Res> {
  factory $CreateClientCopyWith(
          CreateClient value, $Res Function(CreateClient) then) =
      _$CreateClientCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateClientCopyWithImpl<$Res> implements $CreateClientCopyWith<$Res> {
  _$CreateClientCopyWithImpl(this._value, this._then);

  final CreateClient _value;
  // ignore: unused_field
  final $Res Function(CreateClient) _then;
}

/// @nodoc
abstract class $CreateClientStartCopyWith<$Res> {
  factory $CreateClientStartCopyWith(
          CreateClientStart value, $Res Function(CreateClientStart) then) =
      _$CreateClientStartCopyWithImpl<$Res>;
  $Res call({String name, String phoneNumber});
}

/// @nodoc
class _$CreateClientStartCopyWithImpl<$Res>
    extends _$CreateClientCopyWithImpl<$Res>
    implements $CreateClientStartCopyWith<$Res> {
  _$CreateClientStartCopyWithImpl(
      CreateClientStart _value, $Res Function(CreateClientStart) _then)
      : super(_value, (v) => _then(v as CreateClientStart));

  @override
  CreateClientStart get _value => super._value as CreateClientStart;

  @override
  $Res call({
    Object? name = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(CreateClientStart(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateClientStart implements CreateClientStart {
  const _$CreateClientStart({required this.name, required this.phoneNumber});

  @override
  final String name;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'CreateClient(name: $name, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateClientStart &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber);

  @JsonKey(ignore: true)
  @override
  $CreateClientStartCopyWith<CreateClientStart> get copyWith =>
      _$CreateClientStartCopyWithImpl<CreateClientStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String phoneNumber) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(name, phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateClientStart value) $default, {
    required TResult Function(CreateClientSuccessful value) successful,
    required TResult Function(CreateClientError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateClientStart implements CreateClient {
  const factory CreateClientStart(
      {required String name,
      required String phoneNumber}) = _$CreateClientStart;

  String get name;
  String get phoneNumber;
  @JsonKey(ignore: true)
  $CreateClientStartCopyWith<CreateClientStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClientSuccessfulCopyWith<$Res> {
  factory $CreateClientSuccessfulCopyWith(CreateClientSuccessful value,
          $Res Function(CreateClientSuccessful) then) =
      _$CreateClientSuccessfulCopyWithImpl<$Res>;
  $Res call({Client client});
}

/// @nodoc
class _$CreateClientSuccessfulCopyWithImpl<$Res>
    extends _$CreateClientCopyWithImpl<$Res>
    implements $CreateClientSuccessfulCopyWith<$Res> {
  _$CreateClientSuccessfulCopyWithImpl(CreateClientSuccessful _value,
      $Res Function(CreateClientSuccessful) _then)
      : super(_value, (v) => _then(v as CreateClientSuccessful));

  @override
  CreateClientSuccessful get _value => super._value as CreateClientSuccessful;

  @override
  $Res call({
    Object? client = freezed,
  }) {
    return _then(CreateClientSuccessful(
      client == freezed
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as Client,
    ));
  }
}

/// @nodoc

class _$CreateClientSuccessful implements CreateClientSuccessful {
  const _$CreateClientSuccessful(this.client);

  @override
  final Client client;

  @override
  String toString() {
    return 'CreateClient.successful(client: $client)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateClientSuccessful &&
            (identical(other.client, client) || other.client == client));
  }

  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  $CreateClientSuccessfulCopyWith<CreateClientSuccessful> get copyWith =>
      _$CreateClientSuccessfulCopyWithImpl<CreateClientSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String phoneNumber) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(client);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(client);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(client);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateClientStart value) $default, {
    required TResult Function(CreateClientSuccessful value) successful,
    required TResult Function(CreateClientError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateClientSuccessful implements CreateClient {
  const factory CreateClientSuccessful(Client client) =
      _$CreateClientSuccessful;

  Client get client;
  @JsonKey(ignore: true)
  $CreateClientSuccessfulCopyWith<CreateClientSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateClientErrorCopyWith<$Res> {
  factory $CreateClientErrorCopyWith(
          CreateClientError value, $Res Function(CreateClientError) then) =
      _$CreateClientErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateClientErrorCopyWithImpl<$Res>
    extends _$CreateClientCopyWithImpl<$Res>
    implements $CreateClientErrorCopyWith<$Res> {
  _$CreateClientErrorCopyWithImpl(
      CreateClientError _value, $Res Function(CreateClientError) _then)
      : super(_value, (v) => _then(v as CreateClientError));

  @override
  CreateClientError get _value => super._value as CreateClientError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CreateClientError(
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

class _$CreateClientError implements CreateClientError {
  const _$CreateClientError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateClient.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateClientError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) ||
                other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  $CreateClientErrorCopyWith<CreateClientError> get copyWith =>
      _$CreateClientErrorCopyWithImpl<CreateClientError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String phoneNumber) $default, {
    required TResult Function(Client client) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String phoneNumber)? $default, {
    TResult Function(Client client)? successful,
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
    TResult Function(CreateClientStart value) $default, {
    required TResult Function(CreateClientSuccessful value) successful,
    required TResult Function(CreateClientError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateClientStart value)? $default, {
    TResult Function(CreateClientSuccessful value)? successful,
    TResult Function(CreateClientError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateClientError implements CreateClient {
  const factory CreateClientError(Object error, StackTrace stackTrace) =
      _$CreateClientError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $CreateClientErrorCopyWith<CreateClientError> get copyWith =>
      throw _privateConstructorUsedError;
}
