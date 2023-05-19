import 'package:flutter/material.dart';
import 'package:project/repositories/database_connection.dart';
import 'package:sqflite/sqflite.dart';

class repository {
  late DatabaseConnection _databaseConnection = DatabaseConnection();

  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static Database? _database;
  Future<Database?> get database async {
    if (_database != null) return _database;
    _database ??= await _databaseConnection.setDatabase();
    return _database;
  }

  // inserting data in table
  insertData(Table, data) async {
    var connection = await database;
    return await connection?.insert(Table, data);
  }
}
