import 'package:club_force_test_task/domain/entity/album_entity.dart';
import 'package:club_force_test_task/domain/mappers/mapper.dart';
import 'package:club_force_test_task/domain/repository/albums/albums_repository.dart';
import 'package:club_force_test_task/domain/use_cases/use_case.dart';
import 'package:club_force_test_task/presentation/utils/errors.dart';
import 'package:club_force_test_task/presentation/utils/logger.dart';
import 'package:dartz/dartz.dart';

class GetAlbumsByTitleUseCase
    extends UseCaseWithParam<Either<Failure, Object>, String> {
  final AlbumsRepository repository;
  final Mapper mapper;
  final AppLogger appLogger;

  GetAlbumsByTitleUseCase({
    required this.repository,
    required this.mapper,
    required this.appLogger,
  });

  @override
  Future<Either<Failure, List<AlbumEntity>>> call(String value) async {
    appLogger.logDebug(message: 'GetAlbumsByTitleUseCase call: $value');
    try {
      return Right(
        mapper.map(
          await repository.getAlbumByTitle(title: value),
        ),
      );
    } catch (error, stack) {
      appLogger.logError(
          message: error.toString(), error: error, stackTrace: stack);
      return Left(
        Failure(exception: error as Exception),
      );
    }
  }
}
