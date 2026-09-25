import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';

import '../app_database.dart';
import '../tables/users_table.dart';

part 'user_dao.g.dart';

@injectable
@DriftAccessor(tables: [Users]) // "this dao works with users table"
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.db);

  // select everything from users table and return single record/null
  Future<UserData?> getUser() => select(users).getSingleOrNull();

  Future<void> createUser({required String id, required String name}) {
    return into(users).insertOnConflictUpdate(
      UsersCompanion.insert(id: id, name: name),
    );
  }

  // only updates user name
  Future<void> updateUserName(String id, String name) {
    // finds row with needed user`s id
    return (update(users)..where((tbl) => tbl.id.equals(id))).write(
      // updates value
      UsersCompanion(name: Value(name)),
    );
  }
}
