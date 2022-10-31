// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(List<AlbumItem> albumItems) loaded,
    required TResult Function(Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(List<AlbumItem> albumItems)? loaded,
    TResult? Function(Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(List<AlbumItem> albumItems)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumState value) $default, {
    required TResult Function(AlbumStateLoading value) loading,
    required TResult Function(AlbumStateLoaded value) loaded,
    required TResult Function(AlbumStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumState value)? $default, {
    TResult? Function(AlbumStateLoading value)? loading,
    TResult? Function(AlbumStateLoaded value)? loaded,
    TResult? Function(AlbumStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumState value)? $default, {
    TResult Function(AlbumStateLoading value)? loading,
    TResult Function(AlbumStateLoaded value)? loaded,
    TResult Function(AlbumStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateCopyWith<$Res> {
  factory $AlbumStateCopyWith(
          AlbumState value, $Res Function(AlbumState) then) =
      _$AlbumStateCopyWithImpl<$Res, AlbumState>;
}

/// @nodoc
class _$AlbumStateCopyWithImpl<$Res, $Val extends AlbumState>
    implements $AlbumStateCopyWith<$Res> {
  _$AlbumStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AlbumStateCopyWith<$Res> {
  factory _$$_AlbumStateCopyWith(
          _$_AlbumState value, $Res Function(_$_AlbumState) then) =
      __$$_AlbumStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$_AlbumState>
    implements _$$_AlbumStateCopyWith<$Res> {
  __$$_AlbumStateCopyWithImpl(
      _$_AlbumState _value, $Res Function(_$_AlbumState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AlbumState implements _AlbumState {
  const _$_AlbumState();

  @override
  String toString() {
    return 'AlbumState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(List<AlbumItem> albumItems) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(List<AlbumItem> albumItems)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(List<AlbumItem> albumItems)? loaded,
    TResult Function(Exception exception)? error,
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
    TResult Function(_AlbumState value) $default, {
    required TResult Function(AlbumStateLoading value) loading,
    required TResult Function(AlbumStateLoaded value) loaded,
    required TResult Function(AlbumStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumState value)? $default, {
    TResult? Function(AlbumStateLoading value)? loading,
    TResult? Function(AlbumStateLoaded value)? loaded,
    TResult? Function(AlbumStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumState value)? $default, {
    TResult Function(AlbumStateLoading value)? loading,
    TResult Function(AlbumStateLoaded value)? loaded,
    TResult Function(AlbumStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AlbumState implements AlbumState {
  const factory _AlbumState() = _$_AlbumState;
}

/// @nodoc
abstract class _$$AlbumStateLoadingCopyWith<$Res> {
  factory _$$AlbumStateLoadingCopyWith(
          _$AlbumStateLoading value, $Res Function(_$AlbumStateLoading) then) =
      __$$AlbumStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumStateLoadingCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumStateLoading>
    implements _$$AlbumStateLoadingCopyWith<$Res> {
  __$$AlbumStateLoadingCopyWithImpl(
      _$AlbumStateLoading _value, $Res Function(_$AlbumStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlbumStateLoading implements AlbumStateLoading {
  const _$AlbumStateLoading();

  @override
  String toString() {
    return 'AlbumState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlbumStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(List<AlbumItem> albumItems) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(List<AlbumItem> albumItems)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(List<AlbumItem> albumItems)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumState value) $default, {
    required TResult Function(AlbumStateLoading value) loading,
    required TResult Function(AlbumStateLoaded value) loaded,
    required TResult Function(AlbumStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumState value)? $default, {
    TResult? Function(AlbumStateLoading value)? loading,
    TResult? Function(AlbumStateLoaded value)? loaded,
    TResult? Function(AlbumStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumState value)? $default, {
    TResult Function(AlbumStateLoading value)? loading,
    TResult Function(AlbumStateLoaded value)? loaded,
    TResult Function(AlbumStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AlbumStateLoading implements AlbumState {
  const factory AlbumStateLoading() = _$AlbumStateLoading;
}

/// @nodoc
abstract class _$$AlbumStateLoadedCopyWith<$Res> {
  factory _$$AlbumStateLoadedCopyWith(
          _$AlbumStateLoaded value, $Res Function(_$AlbumStateLoaded) then) =
      __$$AlbumStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AlbumItem> albumItems});
}

/// @nodoc
class __$$AlbumStateLoadedCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumStateLoaded>
    implements _$$AlbumStateLoadedCopyWith<$Res> {
  __$$AlbumStateLoadedCopyWithImpl(
      _$AlbumStateLoaded _value, $Res Function(_$AlbumStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumItems = null,
  }) {
    return _then(_$AlbumStateLoaded(
      albumItems: null == albumItems
          ? _value._albumItems
          : albumItems // ignore: cast_nullable_to_non_nullable
              as List<AlbumItem>,
    ));
  }
}

/// @nodoc

class _$AlbumStateLoaded implements AlbumStateLoaded {
  const _$AlbumStateLoaded(
      {final List<AlbumItem> albumItems = const <AlbumItem>[]})
      : _albumItems = albumItems;

  final List<AlbumItem> _albumItems;
  @override
  @JsonKey()
  List<AlbumItem> get albumItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albumItems);
  }

  @override
  String toString() {
    return 'AlbumState.loaded(albumItems: $albumItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._albumItems, _albumItems));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_albumItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumStateLoadedCopyWith<_$AlbumStateLoaded> get copyWith =>
      __$$AlbumStateLoadedCopyWithImpl<_$AlbumStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(List<AlbumItem> albumItems) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return loaded(albumItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(List<AlbumItem> albumItems)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return loaded?.call(albumItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(List<AlbumItem> albumItems)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(albumItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumState value) $default, {
    required TResult Function(AlbumStateLoading value) loading,
    required TResult Function(AlbumStateLoaded value) loaded,
    required TResult Function(AlbumStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumState value)? $default, {
    TResult? Function(AlbumStateLoading value)? loading,
    TResult? Function(AlbumStateLoaded value)? loaded,
    TResult? Function(AlbumStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumState value)? $default, {
    TResult Function(AlbumStateLoading value)? loading,
    TResult Function(AlbumStateLoaded value)? loaded,
    TResult Function(AlbumStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AlbumStateLoaded implements AlbumState {
  const factory AlbumStateLoaded({final List<AlbumItem> albumItems}) =
      _$AlbumStateLoaded;

  List<AlbumItem> get albumItems;
  @JsonKey(ignore: true)
  _$$AlbumStateLoadedCopyWith<_$AlbumStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumStateErrorCopyWith<$Res> {
  factory _$$AlbumStateErrorCopyWith(
          _$AlbumStateError value, $Res Function(_$AlbumStateError) then) =
      __$$AlbumStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception exception});
}

/// @nodoc
class __$$AlbumStateErrorCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumStateError>
    implements _$$AlbumStateErrorCopyWith<$Res> {
  __$$AlbumStateErrorCopyWithImpl(
      _$AlbumStateError _value, $Res Function(_$AlbumStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$AlbumStateError(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$AlbumStateError implements AlbumStateError {
  const _$AlbumStateError({required this.exception});

  @override
  final Exception exception;

  @override
  String toString() {
    return 'AlbumState.error(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumStateError &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumStateErrorCopyWith<_$AlbumStateError> get copyWith =>
      __$$AlbumStateErrorCopyWithImpl<_$AlbumStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() loading,
    required TResult Function(List<AlbumItem> albumItems) loaded,
    required TResult Function(Exception exception) error,
  }) {
    return error(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? loading,
    TResult? Function(List<AlbumItem> albumItems)? loaded,
    TResult? Function(Exception exception)? error,
  }) {
    return error?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? loading,
    TResult Function(List<AlbumItem> albumItems)? loaded,
    TResult Function(Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumState value) $default, {
    required TResult Function(AlbumStateLoading value) loading,
    required TResult Function(AlbumStateLoaded value) loaded,
    required TResult Function(AlbumStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumState value)? $default, {
    TResult? Function(AlbumStateLoading value)? loading,
    TResult? Function(AlbumStateLoaded value)? loaded,
    TResult? Function(AlbumStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumState value)? $default, {
    TResult Function(AlbumStateLoading value)? loading,
    TResult Function(AlbumStateLoaded value)? loaded,
    TResult Function(AlbumStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AlbumStateError implements AlbumState {
  const factory AlbumStateError({required final Exception exception}) =
      _$AlbumStateError;

  Exception get exception;
  @JsonKey(ignore: true)
  _$$AlbumStateErrorCopyWith<_$AlbumStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
