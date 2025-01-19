// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState {
  ProductsStatus get status => throw _privateConstructorUsedError;
  List<Product>? get products => throw _privateConstructorUsedError;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsStateCopyWith<ProductsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
  @useResult
  $Res call({ProductsStatus status, List<Product>? products});

  $ProductsStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductsStatus,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductsStatusCopyWith<$Res> get status {
    return $ProductsStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsStateImplCopyWith<$Res>
    implements $ProductsStateCopyWith<$Res> {
  factory _$$ProductsStateImplCopyWith(
          _$ProductsStateImpl value, $Res Function(_$ProductsStateImpl) then) =
      __$$ProductsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductsStatus status, List<Product>? products});

  @override
  $ProductsStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$ProductsStateImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateImpl>
    implements _$$ProductsStateImplCopyWith<$Res> {
  __$$ProductsStateImplCopyWithImpl(
      _$ProductsStateImpl _value, $Res Function(_$ProductsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? products = freezed,
  }) {
    return _then(_$ProductsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductsStatus,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc

class _$ProductsStateImpl implements _ProductsState {
  const _$ProductsStateImpl(
      {required this.status, final List<Product>? products})
      : _products = products;

  @override
  final ProductsStatus status;
  final List<Product>? _products;
  @override
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductsState(status: $status, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      __$$ProductsStateImplCopyWithImpl<_$ProductsStateImpl>(this, _$identity);
}

abstract class _ProductsState implements ProductsState {
  const factory _ProductsState(
      {required final ProductsStatus status,
      final List<Product>? products}) = _$ProductsStateImpl;

  @override
  ProductsStatus get status;
  @override
  List<Product>? get products;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsStateImplCopyWith<_$ProductsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitialStatus value) initial,
    required TResult Function(_ProductsLoadingStatus value) loading,
    required TResult Function(_ProductsLoadedStatus value) loaded,
    required TResult Function(_ProductsErrorStatus value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitialStatus value)? initial,
    TResult? Function(_ProductsLoadingStatus value)? loading,
    TResult? Function(_ProductsLoadedStatus value)? loaded,
    TResult? Function(_ProductsErrorStatus value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitialStatus value)? initial,
    TResult Function(_ProductsLoadingStatus value)? loading,
    TResult Function(_ProductsLoadedStatus value)? loaded,
    TResult Function(_ProductsErrorStatus value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStatusCopyWith<$Res> {
  factory $ProductsStatusCopyWith(
          ProductsStatus value, $Res Function(ProductsStatus) then) =
      _$ProductsStatusCopyWithImpl<$Res, ProductsStatus>;
}

/// @nodoc
class _$ProductsStatusCopyWithImpl<$Res, $Val extends ProductsStatus>
    implements $ProductsStatusCopyWith<$Res> {
  _$ProductsStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProductsInitialStatusImplCopyWith<$Res> {
  factory _$$ProductsInitialStatusImplCopyWith(
          _$ProductsInitialStatusImpl value,
          $Res Function(_$ProductsInitialStatusImpl) then) =
      __$$ProductsInitialStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsInitialStatusImplCopyWithImpl<$Res>
    extends _$ProductsStatusCopyWithImpl<$Res, _$ProductsInitialStatusImpl>
    implements _$$ProductsInitialStatusImplCopyWith<$Res> {
  __$$ProductsInitialStatusImplCopyWithImpl(_$ProductsInitialStatusImpl _value,
      $Res Function(_$ProductsInitialStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsInitialStatusImpl implements _ProductsInitialStatus {
  const _$ProductsInitialStatusImpl();

  @override
  String toString() {
    return 'ProductsStatus.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsInitialStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitialStatus value) initial,
    required TResult Function(_ProductsLoadingStatus value) loading,
    required TResult Function(_ProductsLoadedStatus value) loaded,
    required TResult Function(_ProductsErrorStatus value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitialStatus value)? initial,
    TResult? Function(_ProductsLoadingStatus value)? loading,
    TResult? Function(_ProductsLoadedStatus value)? loaded,
    TResult? Function(_ProductsErrorStatus value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitialStatus value)? initial,
    TResult Function(_ProductsLoadingStatus value)? loading,
    TResult Function(_ProductsLoadedStatus value)? loaded,
    TResult Function(_ProductsErrorStatus value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ProductsInitialStatus implements ProductsStatus {
  const factory _ProductsInitialStatus() = _$ProductsInitialStatusImpl;
}

/// @nodoc
abstract class _$$ProductsLoadingStatusImplCopyWith<$Res> {
  factory _$$ProductsLoadingStatusImplCopyWith(
          _$ProductsLoadingStatusImpl value,
          $Res Function(_$ProductsLoadingStatusImpl) then) =
      __$$ProductsLoadingStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsLoadingStatusImplCopyWithImpl<$Res>
    extends _$ProductsStatusCopyWithImpl<$Res, _$ProductsLoadingStatusImpl>
    implements _$$ProductsLoadingStatusImplCopyWith<$Res> {
  __$$ProductsLoadingStatusImplCopyWithImpl(_$ProductsLoadingStatusImpl _value,
      $Res Function(_$ProductsLoadingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsLoadingStatusImpl implements _ProductsLoadingStatus {
  const _$ProductsLoadingStatusImpl();

  @override
  String toString() {
    return 'ProductsStatus.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadingStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitialStatus value) initial,
    required TResult Function(_ProductsLoadingStatus value) loading,
    required TResult Function(_ProductsLoadedStatus value) loaded,
    required TResult Function(_ProductsErrorStatus value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitialStatus value)? initial,
    TResult? Function(_ProductsLoadingStatus value)? loading,
    TResult? Function(_ProductsLoadedStatus value)? loaded,
    TResult? Function(_ProductsErrorStatus value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitialStatus value)? initial,
    TResult Function(_ProductsLoadingStatus value)? loading,
    TResult Function(_ProductsLoadedStatus value)? loaded,
    TResult Function(_ProductsErrorStatus value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadingStatus implements ProductsStatus {
  const factory _ProductsLoadingStatus() = _$ProductsLoadingStatusImpl;
}

/// @nodoc
abstract class _$$ProductsLoadedStatusImplCopyWith<$Res> {
  factory _$$ProductsLoadedStatusImplCopyWith(_$ProductsLoadedStatusImpl value,
          $Res Function(_$ProductsLoadedStatusImpl) then) =
      __$$ProductsLoadedStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsLoadedStatusImplCopyWithImpl<$Res>
    extends _$ProductsStatusCopyWithImpl<$Res, _$ProductsLoadedStatusImpl>
    implements _$$ProductsLoadedStatusImplCopyWith<$Res> {
  __$$ProductsLoadedStatusImplCopyWithImpl(_$ProductsLoadedStatusImpl _value,
      $Res Function(_$ProductsLoadedStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsLoadedStatusImpl implements _ProductsLoadedStatus {
  const _$ProductsLoadedStatusImpl();

  @override
  String toString() {
    return 'ProductsStatus.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadedStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failure,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? failure,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitialStatus value) initial,
    required TResult Function(_ProductsLoadingStatus value) loading,
    required TResult Function(_ProductsLoadedStatus value) loaded,
    required TResult Function(_ProductsErrorStatus value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitialStatus value)? initial,
    TResult? Function(_ProductsLoadingStatus value)? loading,
    TResult? Function(_ProductsLoadedStatus value)? loaded,
    TResult? Function(_ProductsErrorStatus value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitialStatus value)? initial,
    TResult Function(_ProductsLoadingStatus value)? loading,
    TResult Function(_ProductsLoadedStatus value)? loaded,
    TResult Function(_ProductsErrorStatus value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ProductsLoadedStatus implements ProductsStatus {
  const factory _ProductsLoadedStatus() = _$ProductsLoadedStatusImpl;
}

/// @nodoc
abstract class _$$ProductsErrorStatusImplCopyWith<$Res> {
  factory _$$ProductsErrorStatusImplCopyWith(_$ProductsErrorStatusImpl value,
          $Res Function(_$ProductsErrorStatusImpl) then) =
      __$$ProductsErrorStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsErrorStatusImplCopyWithImpl<$Res>
    extends _$ProductsStatusCopyWithImpl<$Res, _$ProductsErrorStatusImpl>
    implements _$$ProductsErrorStatusImplCopyWith<$Res> {
  __$$ProductsErrorStatusImplCopyWithImpl(_$ProductsErrorStatusImpl _value,
      $Res Function(_$ProductsErrorStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsErrorStatusImpl implements _ProductsErrorStatus {
  const _$ProductsErrorStatusImpl();

  @override
  String toString() {
    return 'ProductsStatus.failure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsInitialStatus value) initial,
    required TResult Function(_ProductsLoadingStatus value) loading,
    required TResult Function(_ProductsLoadedStatus value) loaded,
    required TResult Function(_ProductsErrorStatus value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsInitialStatus value)? initial,
    TResult? Function(_ProductsLoadingStatus value)? loading,
    TResult? Function(_ProductsLoadedStatus value)? loaded,
    TResult? Function(_ProductsErrorStatus value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsInitialStatus value)? initial,
    TResult Function(_ProductsLoadingStatus value)? loading,
    TResult Function(_ProductsLoadedStatus value)? loaded,
    TResult Function(_ProductsErrorStatus value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _ProductsErrorStatus implements ProductsStatus {
  const factory _ProductsErrorStatus() = _$ProductsErrorStatusImpl;
}
