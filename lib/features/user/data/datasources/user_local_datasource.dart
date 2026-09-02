import 'package:injectable/injectable.dart';
import '../../../../core/error/exceptions.dart';
import '../models/user.dart';
import '../../../../core/database/daos/user_dao.dart';

abstract class UserLocalDataSource {
  Future<User> getUser();
  Future<void> changeUserName({required String name});
}

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final UserDao _userDao;

  UserLocalDataSourceImpl(this._userDao);

  @override
  Future<User> getUser() async {
    try {
      final userData = await _userDao.getUser();

      if (userData == null) {
        throw CacheException();
      }

      // drift-model -> model
      return User(
        id: userData.id,
        name: userData.name,
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> changeUserName({required String name}) async {
    try {
      final currentUser = await _userDao.getUser();

      if (currentUser == null) {
        throw CacheException();
      }

      await _userDao.updateUserName(currentUser.id, name);
    } catch (e) {
      throw CacheException();
    }
  }
}