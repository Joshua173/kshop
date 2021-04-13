import 'package:flutter/material.dart';
// import 'package:kshop/ui/product/productView.dart';R
import 'package:moor/moor.dart';
import 'package:provider/provider.dart';
import 'package:kshop/data/database.dart';
import 'package:editable/editable.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List headers = [
    {"title": 'Nom', 'index': 1, 'key': 'nom'},
    {"title": 'Prix', 'index': 2, 'key': 'prix'},
    {"title": 'Disponibles', 'index': 3, 'key': 'disponibles'},
    {"title": 'Vendus', 'index': 4, 'key': 'vendus'},
    {"title": 'Categorie', 'index': 5, 'key': 'categorie'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 200,
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            'Produit',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      body: Provider<MyDatabase>(
        create: (context) => MyDatabase(),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Editable(
            columns: headers,
            columnRatio: 0.15,
            tdPaddingLeft: 30,
            showCreateButton: true,
            tdStyle: TextStyle(fontSize: 20),
            showSaveIcon: true,
            saveIcon: Icons.check_circle_rounded,
            saveIconColor: Colors.green,
            saveIconSize: 50,
            borderColor: Colors.black,
            onSubmitted: (value) {},
            onRowSaved: (value) {
              final product = ProductsCompanion(
                  name: Value(value['nom']),
                  price: Value(int.parse(value['prix'])),
                  availale: Value(int.parse(value['disponibles'])),
                  sell: Value(int.parse(value['vendus'])),
                  categorie: Value(value['categorie']));
              Provider.of(context, listen: false).insertProduct(product);
            },
          ),
        ),
        dispose: (context, db) => db.close(),
      ),
    );
  }
}
