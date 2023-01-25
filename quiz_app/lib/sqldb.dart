import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';


class SqlDb{

  static Database? _db;

  Future<Database?> get db async{
    if(_db == null){
      _db = await intitialDb();
      return _db;
    }else{
      return _db;
    }
  }

  intitialDb() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'quiz.db');

    Database mydb = await openDatabase(path, onCreate: _onCreate, version: 3, onUpgrade: _onUpgrade );
    return mydb;

  }

  _onUpgrade(Database db, int oldversion, int newversion){

  }

  _onCreate(Database db, int version) async{
    await db.execute('''
    CREATE TABLE "sorular"  (
        "id" INTEGER AUTOINCREMENT NOT NULL PRİMARY KEY,
        "soru_metni" TEXT NOT NULL, 
        "a" TEXT NOT NULL, 
        "b" TEXT NOT NULL, 
        "c" TEXT NOT NULL, 
        "d" TEXT NOT NULL, 
        "cevap" TEXT NOT NULL
        )
        ''');
        print("Create Database and table");
  }

  readData(String sql) async{
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }



}

