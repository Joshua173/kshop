import 'package:flutter/material.dart';

import 'data/database.dart';
import 'ui/home.dart';

// void main() => runApp(MyApp());
// to instanciate
MyDatabase database;

void main() {
  database = MyDatabase();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'kshop',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
