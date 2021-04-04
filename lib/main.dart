import 'package:flutter/material.dart';

import 'ui/homePage.dart';
import 'data/database.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => MyDatabase(),
      child: MaterialApp(
        title: 'kshop',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
