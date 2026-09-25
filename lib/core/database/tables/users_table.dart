import 'package:drift/drift.dart';

// sqlite table name – users
// dart class name - UserData
@DataClassName('UserData') 
class Users extends Table {
  // text-fields
  TextColumn get id => text()();
  TextColumn get name => text()();

  @override
  // id – primary key of the table
  Set<Column> get primaryKey => {id};
}