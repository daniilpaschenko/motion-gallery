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

  static const String _localUserId = 'local_user';

  UserLocalDataSourceImpl(this._userDao);

  @override
  Future<User> getUser() async {
    try {
      var userData = await _userDao.getUser();

      if (userData == null) {
        await _userDao.createUser(id: _localUserId, name: 'Motion User');
        userData = await _userDao.getUser();
        if (userData == null) {
          throw CacheException('User was not created');
        }
      }

      return User(id: userData.id, name: userData.name);
    } catch (e) {
      if (e is CacheException) rethrow;
      throw CacheException(e.toString());
    }
  }

  @override
  Future<void> changeUserName({required String name}) async {
    try {
      final user = await getUser();
      await _userDao.updateUserName(user.id, name);
    } catch (e) {
      if (e is CacheException) rethrow;
      throw CacheException(e.toString());
    }
  }
}
