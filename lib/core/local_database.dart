import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB();
    return _database!;
  }

  static Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'search_history.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE searches (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            text TEXT UNIQUE
          )
        ''');
      },
    );
  }

  static Future<void> addSearch(String searchText) async {
    final db = await database;
    await db.delete("searches", where: "text = ?", whereArgs: [searchText]);
    await db.insert("searches", {"text": searchText});
    List<Map<String, dynamic>> searches = await db.query("searches", orderBy: "id DESC");
    if (searches.length > 5) {
      int lastId = searches.last["id"];
      await db.delete("searches", where: "id = ?", whereArgs: [lastId]);
    }
  }
  static Future<List<String>> getSearchHistory() async {
    final db = await database;
    List<Map<String, dynamic>> result = await db.query("searches", orderBy: "id DESC", limit: 4);
    return result.map((e) => e["text"] as String).toList();
  }

  static Future<void> clearHistory() async {
    final db = await database;
    await db.delete("searches");
  }
}
