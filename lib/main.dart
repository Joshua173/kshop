import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

// import 'data/database.dart';
import 'data/database.dart';
import 'ui/home.dart';

void main() => runApp(MyApp());
// to instanciate
//

// void main() {
//   runApp(
//     Provider<MyDatabase>(
//       create: (context) => MyDatabase(),
//       child: MyApp(),
//       dispose: (context, db) => db.close(),
//     ),
//   );
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [ChangeNotifierProvider<Database>(create: (_) => Database())],
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Demo',
    //     theme: ThemeData(primarySwatch: Colors.red, fontFamily: "Montserrat"),
    //     home: MyHomePage(),
    //   ),
    // );
    return MultiProvider(
        providers: [Provider<MyDatabase>(create: (_) => MyDatabase())],
        child: MaterialApp(
          title: 'kshop',
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ));
  }
}
