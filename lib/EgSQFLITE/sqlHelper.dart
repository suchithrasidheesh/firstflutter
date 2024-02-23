import 'dart:async';

import 'package:sqflite/sqflite.dart' as sql;

class sqlHelper{

  static Future<sql.Database>dataBase1()async{
    return sql.openDatabase('myDataBase',version: 1,
      onCreate: (sql.Database database,int version)async{
      await createTable(database);
      }

    );
  }

  static Future<void> createTable(sql.Database database)async {
    await database.execute("""CREATE TABLE registration(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    name TEXT,
    email TEXT,
    password TEXT
    )""");
  }

  static Future<int>addDatabase(String name,String email,String password)async{
    final db=await sqlHelper.dataBase1();
    final data={'name':name,'email':email,'password':password};
    final id=db.insert('registration',data,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map>>userFound(String Eemail)async{
    final db=await sqlHelper.dataBase1();
    final data=await db.rawQuery(
      "SELECT * FROM registration WHERE email='$Eemail'");
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }

  static Future<List<Map>>CheckLogin(String username,String password)async{
    final db=await sqlHelper.dataBase1();
    final data=await db.rawQuery("SELECT * FROM registration WHERE email='$username' AND password='$password'");
     if(data.isNotEmpty) {
       return data;
     }
     return data;
  }
  static Future<List<Map>>getAll()async{
    final db=await sqlHelper.dataBase1();
    final data=db.rawQuery(
        "SELECT * FROM registration");
    return data;
  }

  static Future<void>delteuser(int id)async{
    final db=await sqlHelper.dataBase1();
    db.delete('registration',where: 'id=?',whereArgs: [id]);
  }

  static Future<sql.Database>dataBase2()async{
    return sql.openDatabase('AdminaddDB',version: 2,
     onCreate:(sql.Database database,int version)async{
          await createTable2(database);
        }
        );
  }

  static Future<void>createTable2(sql.Database database)async{
    await database.execute(""" CREATE TABLE adminAddTable(
      id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
      pname TEXT,
      pprice TEXT,
      pdetails TEXT
    )""");
  }

  static Future<int>AdminAdd(String pname,String pprice,String pdetails)async{
    final db=await sqlHelper.dataBase2();
    final data={'pname':pname,'pprice':pprice,'pdetails':pdetails};
    final id=db.insert('adminAddTable',data,conflictAlgorithm:sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map>>GetData()async{
    var db=await sqlHelper.dataBase2();
    var data=await db.rawQuery(
        "SELECT * FROM adminAddTable"
    );
    return data;
  }
}