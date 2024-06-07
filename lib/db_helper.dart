import 'dart:async';

import 'package:sqflite/sqflite.dart';

class DbHelper {
  Future<Database> openDb() async {
    var db = await openDatabase("teacherManagementSystem.db",
        version: 1, onConfigure: onConfigure, onCreate: onCreate);
    return db;
  }

  FutureOr<void> onConfigure(Database db) {}

  FutureOr<void> onCreate(Database db, int version) {
    db.execute(
        'create table info(name text, subject text, age integer, experience text)');
  }

  Future<int> addData(
      {required String name,
        required String subject,
        required int age,
        required String experience}) async {
    Database db = await openDb();
    int value = await db.rawInsert(
        """Insert into info(name,subject,age,experience) values(?,?,?,?)
  """, [name, subject, age, experience]);
    return value;
  }

  Future<List<Map>>readData()async{
    Database db=await openDb();
    List<Map> allData=await db.rawQuery("""Select * from info""");
    return allData;
  }
}

