import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class dbsql {
  static Database? _db;

  Future <Database?> get db async {

    // ignore: unnecessary_null_comparison
    if (db == null){
      
      _db = await intialDb();
      return _db ;
    }else {
      return _db ;
    }
  }

intialDb() async{

String databasepath = await getDatabasesPath();
String path = join(databasepath, 'Moain.db'); 
Database mydb = await openDatabase(path,onCreate:   _onCreate, version: 3, onUpgrade: _onUpgrade);
return mydb ;             
}
_onUpgrade(Database db , int oldversion , int newversion){ }

_onCreate (Database db , int version) async{
await db.execute(''' 
CREATE TABLE = "notes"(
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
  "note" TEXT NOT NULL 
)
''');
print("Create Data base ");
readData(String,sql) async{

  Database? mydb = await db; 
  // ignore: unused_local_variable
  List<Map> response = await mydb.rawQuery(sql);
 

  readData(String,sql) async{

  Database? mydb = await db; 
  List<Map> response = await mydb.rawQuery(sql);
   return response ;

}
  insertData(String,sql) async{

  Database? mydb = await db; 
  int response = await mydb.rawInsert(sql);
   return response ;

}
  updateData(String,sql) async{

  Database? mydb = await db; 
  int response = await mydb.rawUpdate(sql);
   return response ;

}
  deleteData(String,sql) async{

  Database? mydb = await db; 
  int  response = await mydb.rawDelete(sql);
   return response ;

}
}
}}