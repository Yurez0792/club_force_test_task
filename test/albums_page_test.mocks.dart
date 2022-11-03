// Mocks generated by Mockito 5.3.2 from annotations
// in club_force_test_task/test/albums_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:club_force_test_task/domain/entity/album_entity.dart' as _i9;
import 'package:club_force_test_task/domain/mappers/mapper.dart' as _i3;
import 'package:club_force_test_task/domain/repository/albums/albums_repository.dart'
    as _i2;
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_by_title_use_case.dart'
    as _i10;
import 'package:club_force_test_task/domain/use_cases/albums/get_albums_use_case.dart'
    as _i6;
import 'package:club_force_test_task/presentation/utils/errors.dart' as _i8;
import 'package:club_force_test_task/presentation/utils/logger.dart' as _i4;
import 'package:dartz/dartz.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeAlbumsRepository_0 extends _i1.SmartFake
    implements _i2.AlbumsRepository {
  _FakeAlbumsRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeMapper_1<T, V> extends _i1.SmartFake implements _i3.Mapper<T, V> {
  _FakeMapper_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeAppLogger_2 extends _i1.SmartFake implements _i4.AppLogger {
  _FakeAppLogger_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_3<L, R> extends _i1.SmartFake implements _i5.Either<L, R> {
  _FakeEither_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [GetAlbumsUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAlbumsUseCase extends _i1.Mock implements _i6.GetAlbumsUseCase {
  MockGetAlbumsUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AlbumsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAlbumsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.AlbumsRepository);
  @override
  _i3.Mapper<dynamic, dynamic> get mapper => (super.noSuchMethod(
        Invocation.getter(#mapper),
        returnValue: _FakeMapper_1<dynamic, dynamic>(
          this,
          Invocation.getter(#mapper),
        ),
      ) as _i3.Mapper<dynamic, dynamic>);
  @override
  _i4.AppLogger get appLogger => (super.noSuchMethod(
        Invocation.getter(#appLogger),
        returnValue: _FakeAppLogger_2(
          this,
          Invocation.getter(#appLogger),
        ),
      ) as _i4.AppLogger);
  @override
  _i7.Future<_i5.Either<_i8.Failure, List<_i9.AlbumEntity>>> call() =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [],
        ),
        returnValue:
            _i7.Future<_i5.Either<_i8.Failure, List<_i9.AlbumEntity>>>.value(
                _FakeEither_3<_i8.Failure, List<_i9.AlbumEntity>>(
          this,
          Invocation.method(
            #call,
            [],
          ),
        )),
      ) as _i7.Future<_i5.Either<_i8.Failure, List<_i9.AlbumEntity>>>);
}

/// A class which mocks [GetAlbumsByTitleUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetAlbumsByTitleUseCase extends _i1.Mock
    implements _i10.GetAlbumsByTitleUseCase {
  MockGetAlbumsByTitleUseCase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.AlbumsRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeAlbumsRepository_0(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i2.AlbumsRepository);
  @override
  _i3.Mapper<dynamic, dynamic> get mapper => (super.noSuchMethod(
        Invocation.getter(#mapper),
        returnValue: _FakeMapper_1<dynamic, dynamic>(
          this,
          Invocation.getter(#mapper),
        ),
      ) as _i3.Mapper<dynamic, dynamic>);
  @override
  _i4.AppLogger get appLogger => (super.noSuchMethod(
        Invocation.getter(#appLogger),
        returnValue: _FakeAppLogger_2(
          this,
          Invocation.getter(#appLogger),
        ),
      ) as _i4.AppLogger);
  @override
  _i7.Future<_i5.Either<_i8.Failure, List<_i9.AlbumEntity>>> call(
          String? value) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [value],
        ),
        returnValue:
            _i7.Future<_i5.Either<_i8.Failure, List<_i9.AlbumEntity>>>.value(
                _FakeEither_3<_i8.Failure, List<_i9.AlbumEntity>>(
          this,
          Invocation.method(
            #call,
            [value],
          ),
        )),
      ) as _i7.Future<_i5.Either<_i8.Failure, List<_i9.AlbumEntity>>>);
}
