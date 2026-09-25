import 'package:drift/drift.dart';

import '../app_database.dart';
import '../tables/users_table.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [Users]) // "this dao works with users table"
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.db);

  // select everything from users table and return single record/null
  Future<UserData?> getUser() => select(users).getSingleOrNull();

  // UsersCompanion – a special class used for writing

/*   // insert/update user
  Future<void> upsertUser(UsersCompanion entry) {
    // if records exists – update, else – insert (creates a new one)
    return into(users).insertOnConflictUpdate(entry);
  }
 */
  // only updates user name
  Future<void> updateUserName(String id, String name) {
    // finds row with needed user`s id
    return (update(users)..where((tbl) => tbl.id.equals(id))).write(
      // updates value
      UsersCompanion(name: Value(name)),
    );
  }
}