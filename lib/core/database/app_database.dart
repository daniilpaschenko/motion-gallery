import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:injectable/injectable.dart';

import 'tables/users_table.dart';
import 'daos/user_dao.dart';

part 'app_database.g.dart';

@lazySingleton
@DriftDatabase( // says "this is primary database"
  tables: [Users], // all tables
  daos: [UserDao], // all daos
)
class AppDatabase extends _$AppDatabase {
  // when database is created – database`s file is opened
  AppDatabase() : super(_openConnection());

  @override
  // increase this value when the table changes
  // version of database structure
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        // creates all tables when database is being created for the 1st time
        onCreate: (m) => m.createAll(),
        // when schemaVersion is upgraded
        onUpgrade: (m, from, to) async {
          // later
        },
      );

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'app_db',
      web: DriftWebOptions(
        sqlite3Wasm: Uri.parse('sqlite3.wasm'),
        driftWorker: Uri.parse('drift_worker.js'),
      ),
    );
  }
}
