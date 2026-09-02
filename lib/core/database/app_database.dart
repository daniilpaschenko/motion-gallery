import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import 'tables/users_table.dart';
import 'daos/user_dao.dart';

part 'app_database.g.dart';

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
    return LazyDatabase(() async {
      // finds safe app`s folder where files will be saved
      final dbFolder = await getApplicationDocumentsDirectory();
      // creates full path to database`s file (app_db.sqlite)
      final file = File(path.join(dbFolder.path, 'app_db.sqlite'));
      // opens sqlite-file in background mode
      return NativeDatabase.createInBackground(file);
    });
  }
}