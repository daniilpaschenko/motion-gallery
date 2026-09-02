import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/failures.dart';
import '../interfaces/user_interface.dart';

@injectable
class ChangeUserNameUsecase {
    final UserInterface _repository;
    const ChangeUserNameUsecase(this._repository);

    Future<Either<Failure, void>> call(String name) => _repository.changeUserName(name);
}
