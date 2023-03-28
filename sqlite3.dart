//import sqlite3 to the project
import 'package:sqflite/sqflite.dart';

// open and create table if not exists  in sqlite3 
final database = await openDatabase(
    'my_database.db',
    version: 1,
    onCreate: (db, version) async {
        await db.execute('CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY, name TEXT)');
    },
);


// add in sqlite3 this data
await database.insert('users', {'name': 'John Doe'});

//close sqlite3 
await database.close();
