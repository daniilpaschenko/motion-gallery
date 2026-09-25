import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../interfaces/user_interface.dart';

@injectable
class ChangeUserNameUseCase {
    final UserInterface _repository;
    const ChangeUserNameUseCase(this._repository);

    Future<Either<Failure, void>> call(String name) => _repository.changeUserName(name);
}
