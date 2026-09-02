import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../mappers/user_mapper.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/interfaces/user_interface.dart';
import '../datasources/user_local_datasource.dart';

@LazySingleton(as: UserInterface)
class UserRepository implements UserInterface {
  final UserLocalDataSource _localDataSource;

  UserRepository({
    required this._localDataSource,
  });

  @override
  Future<Either<Failure, UserEntity>> getUser() async {
    try {
      final user = await _localDataSource.getUser();
      return Right(user.toEntity());
    } on CacheException {
      return const Left(Failure.storage());
    } catch (_) {
      return const Left(Failure.storage());
    }
  }

  @override
  Future<Either<Failure, void>> changeUserName(String name) async {
    try {
      await _localDataSource.changeUserName(name: name);
      return const Right(null);
    } on CacheException {
      return const Left(Failure.storage());
    } catch (_) {
      return const Left(Failure.storage());
    }
  }
}