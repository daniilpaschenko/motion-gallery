import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/user_entity.dart';
import '../interfaces/user_interface.dart';

@injectable
class GetUserUseCase {
    final UserInterface _repository;
    const GetUserUseCase(this._repository);

    Future<Either<Failure, UserEntity>> call() => _repository.getUser();
}