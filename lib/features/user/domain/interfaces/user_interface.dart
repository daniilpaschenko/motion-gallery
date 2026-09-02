import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/user_entity.dart';

abstract class UserInterface {
  Future<Either<Failure, UserEntity>> getUser();

  Future<Either<Failure, void>> changeUserName(String name);
}