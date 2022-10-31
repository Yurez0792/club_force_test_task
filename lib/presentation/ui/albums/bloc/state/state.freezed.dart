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
mixin _$AlbumsState {
  bool get isSearching => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isSearching) $default, {
    required TResult Function(bool isSearching) loading,
    required TResult Function(bool isSearching, List<Album> albums) loaded,
    required TResult Function(bool isSearching, Exception exception) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isSearching)? $default, {
    TResult? Function(bool isSearching)? loading,
    TResult? Function(bool isSearching, List<Album> albums)? loaded,
    TResult? Function(bool isSearching, Exception exception)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isSearching)? $default, {
    TResult Function(bool isSearching)? loading,
    TResult Function(bool isSearching, List<Album> albums)? loaded,
    TResult Function(bool isSearching, Exception exception)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumsState value) $default, {
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumsState value)? $default, {
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumsState value)? $default, {
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumsStateCopyWith<AlbumsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumsStateCopyWith<$Res> {
  factory $AlbumsStateCopyWith(
          AlbumsState value, $Res Function(AlbumsState) then) =
      _$AlbumsStateCopyWithImpl<$Res, AlbumsState>;
  @useResult
  $Res call({bool isSearching});
}

/// @nodoc
class _$AlbumsStateCopyWithImpl<$Res, $Val extends AlbumsState>
    implements $AlbumsStateCopyWith<$Res> {
  _$AlbumsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
  }) {
    return _then(_value.copyWith(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AlbumsStateCopyWith<$Res>
    implements $AlbumsStateCopyWith<$Res> {
  factory _$$_AlbumsStateCopyWith(
          _$_AlbumsState value, $Res Function(_$_AlbumsState) then) =
      __$$_AlbumsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSearching});
}

/// @nodoc
class __$$_AlbumsStateCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$_AlbumsState>
    implements _$$_AlbumsStateCopyWith<$Res> {
  __$$_AlbumsStateCopyWithImpl(
      _$_AlbumsState _value, $Res Function(_$_AlbumsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
  }) {
    return _then(_$_AlbumsState(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AlbumsState implements _AlbumsState {
  const _$_AlbumsState({this.isSearching = false});

  @override
  @JsonKey()
  final bool isSearching;

  @override
  String toString() {
    return 'AlbumsState(isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumsState &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AlbumsStateCopyWith<_$_AlbumsState> get copyWith =>
      __$$_AlbumsStateCopyWithImpl<_$_AlbumsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isSearching) $default, {
    required TResult Function(bool isSearching) loading,
    required TResult Function(bool isSearching, List<Album> albums) loaded,
    required TResult Function(bool isSearching, Exception exception) error,
  }) {
    return $default(isSearching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isSearching)? $default, {
    TResult? Function(bool isSearching)? loading,
    TResult? Function(bool isSearching, List<Album> albums)? loaded,
    TResult? Function(bool isSearching, Exception exception)? error,
  }) {
    return $default?.call(isSearching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isSearching)? $default, {
    TResult Function(bool isSearching)? loading,
    TResult Function(bool isSearching, List<Album> albums)? loaded,
    TResult Function(bool isSearching, Exception exception)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(isSearching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumsState value) $default, {
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumsState value)? $default, {
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumsState value)? $default, {
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AlbumsState implements AlbumsState {
  const factory _AlbumsState({final bool isSearching}) = _$_AlbumsState;

  @override
  bool get isSearching;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumsStateCopyWith<_$_AlbumsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumsStateLoadingCopyWith<$Res>
    implements $AlbumsStateCopyWith<$Res> {
  factory _$$AlbumsStateLoadingCopyWith(_$AlbumsStateLoading value,
          $Res Function(_$AlbumsStateLoading) then) =
      __$$AlbumsStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSearching});
}

/// @nodoc
class __$$AlbumsStateLoadingCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateLoading>
    implements _$$AlbumsStateLoadingCopyWith<$Res> {
  __$$AlbumsStateLoadingCopyWithImpl(
      _$AlbumsStateLoading _value, $Res Function(_$AlbumsStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
  }) {
    return _then(_$AlbumsStateLoading(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AlbumsStateLoading implements AlbumsStateLoading {
  const _$AlbumsStateLoading({this.isSearching = false});

  @override
  @JsonKey()
  final bool isSearching;

  @override
  String toString() {
    return 'AlbumsState.loading(isSearching: $isSearching)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsStateLoading &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsStateLoadingCopyWith<_$AlbumsStateLoading> get copyWith =>
      __$$AlbumsStateLoadingCopyWithImpl<_$AlbumsStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isSearching) $default, {
    required TResult Function(bool isSearching) loading,
    required TResult Function(bool isSearching, List<Album> albums) loaded,
    required TResult Function(bool isSearching, Exception exception) error,
  }) {
    return loading(isSearching);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isSearching)? $default, {
    TResult? Function(bool isSearching)? loading,
    TResult? Function(bool isSearching, List<Album> albums)? loaded,
    TResult? Function(bool isSearching, Exception exception)? error,
  }) {
    return loading?.call(isSearching);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isSearching)? $default, {
    TResult Function(bool isSearching)? loading,
    TResult Function(bool isSearching, List<Album> albums)? loaded,
    TResult Function(bool isSearching, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isSearching);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumsState value) $default, {
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumsState value)? $default, {
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumsState value)? $default, {
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateLoading implements AlbumsState {
  const factory AlbumsStateLoading({final bool isSearching}) =
      _$AlbumsStateLoading;

  @override
  bool get isSearching;
  @override
  @JsonKey(ignore: true)
  _$$AlbumsStateLoadingCopyWith<_$AlbumsStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumsStateLoadedCopyWith<$Res>
    implements $AlbumsStateCopyWith<$Res> {
  factory _$$AlbumsStateLoadedCopyWith(
          _$AlbumsStateLoaded value, $Res Function(_$AlbumsStateLoaded) then) =
      __$$AlbumsStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSearching, List<Album> albums});
}

/// @nodoc
class __$$AlbumsStateLoadedCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateLoaded>
    implements _$$AlbumsStateLoadedCopyWith<$Res> {
  __$$AlbumsStateLoadedCopyWithImpl(
      _$AlbumsStateLoaded _value, $Res Function(_$AlbumsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
    Object? albums = null,
  }) {
    return _then(_$AlbumsStateLoaded(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      albums: null == albums
          ? _value._albums
          : albums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
    ));
  }
}

/// @nodoc

class _$AlbumsStateLoaded implements AlbumsStateLoaded {
  const _$AlbumsStateLoaded(
      {this.isSearching = false, final List<Album> albums = const <Album>[]})
      : _albums = albums;

  @override
  @JsonKey()
  final bool isSearching;
  final List<Album> _albums;
  @override
  @JsonKey()
  List<Album> get albums {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albums);
  }

  @override
  String toString() {
    return 'AlbumsState.loaded(isSearching: $isSearching, albums: $albums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsStateLoaded &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            const DeepCollectionEquality().equals(other._albums, _albums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSearching, const DeepCollectionEquality().hash(_albums));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsStateLoadedCopyWith<_$AlbumsStateLoaded> get copyWith =>
      __$$AlbumsStateLoadedCopyWithImpl<_$AlbumsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isSearching) $default, {
    required TResult Function(bool isSearching) loading,
    required TResult Function(bool isSearching, List<Album> albums) loaded,
    required TResult Function(bool isSearching, Exception exception) error,
  }) {
    return loaded(isSearching, albums);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isSearching)? $default, {
    TResult? Function(bool isSearching)? loading,
    TResult? Function(bool isSearching, List<Album> albums)? loaded,
    TResult? Function(bool isSearching, Exception exception)? error,
  }) {
    return loaded?.call(isSearching, albums);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isSearching)? $default, {
    TResult Function(bool isSearching)? loading,
    TResult Function(bool isSearching, List<Album> albums)? loaded,
    TResult Function(bool isSearching, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isSearching, albums);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumsState value) $default, {
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumsState value)? $default, {
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumsState value)? $default, {
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateLoaded implements AlbumsState {
  const factory AlbumsStateLoaded(
      {final bool isSearching, final List<Album> albums}) = _$AlbumsStateLoaded;

  @override
  bool get isSearching;
  List<Album> get albums;
  @override
  @JsonKey(ignore: true)
  _$$AlbumsStateLoadedCopyWith<_$AlbumsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumsStateErrorCopyWith<$Res>
    implements $AlbumsStateCopyWith<$Res> {
  factory _$$AlbumsStateErrorCopyWith(
          _$AlbumsStateError value, $Res Function(_$AlbumsStateError) then) =
      __$$AlbumsStateErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSearching, Exception exception});
}

/// @nodoc
class __$$AlbumsStateErrorCopyWithImpl<$Res>
    extends _$AlbumsStateCopyWithImpl<$Res, _$AlbumsStateError>
    implements _$$AlbumsStateErrorCopyWith<$Res> {
  __$$AlbumsStateErrorCopyWithImpl(
      _$AlbumsStateError _value, $Res Function(_$AlbumsStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSearching = null,
    Object? exception = null,
  }) {
    return _then(_$AlbumsStateError(
      isSearching: null == isSearching
          ? _value.isSearching
          : isSearching // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$AlbumsStateError implements AlbumsStateError {
  const _$AlbumsStateError({this.isSearching = false, required this.exception});

  @override
  @JsonKey()
  final bool isSearching;
  @override
  final Exception exception;

  @override
  String toString() {
    return 'AlbumsState.error(isSearching: $isSearching, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumsStateError &&
            (identical(other.isSearching, isSearching) ||
                other.isSearching == isSearching) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSearching, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumsStateErrorCopyWith<_$AlbumsStateError> get copyWith =>
      __$$AlbumsStateErrorCopyWithImpl<_$AlbumsStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isSearching) $default, {
    required TResult Function(bool isSearching) loading,
    required TResult Function(bool isSearching, List<Album> albums) loaded,
    required TResult Function(bool isSearching, Exception exception) error,
  }) {
    return error(isSearching, exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool isSearching)? $default, {
    TResult? Function(bool isSearching)? loading,
    TResult? Function(bool isSearching, List<Album> albums)? loaded,
    TResult? Function(bool isSearching, Exception exception)? error,
  }) {
    return error?.call(isSearching, exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isSearching)? $default, {
    TResult Function(bool isSearching)? loading,
    TResult Function(bool isSearching, List<Album> albums)? loaded,
    TResult Function(bool isSearching, Exception exception)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isSearching, exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AlbumsState value) $default, {
    required TResult Function(AlbumsStateLoading value) loading,
    required TResult Function(AlbumsStateLoaded value) loaded,
    required TResult Function(AlbumsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AlbumsState value)? $default, {
    TResult? Function(AlbumsStateLoading value)? loading,
    TResult? Function(AlbumsStateLoaded value)? loaded,
    TResult? Function(AlbumsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AlbumsState value)? $default, {
    TResult Function(AlbumsStateLoading value)? loading,
    TResult Function(AlbumsStateLoaded value)? loaded,
    TResult Function(AlbumsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AlbumsStateError implements AlbumsState {
  const factory AlbumsStateError(
      {final bool isSearching,
      required final Exception exception}) = _$AlbumsStateError;

  @override
  bool get isSearching;
  Exception get exception;
  @override
  @JsonKey(ignore: true)
  _$$AlbumsStateErrorCopyWith<_$AlbumsStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
