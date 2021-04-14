import 'package:flutter/material.dart';
import 'package:kshop/main.dart';

import 'package:moor/moor.dart';
import 'package:kshop/data/database.dart';
import 'package:editable/editable.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  var prod = database.getAllProduct() ?? [];

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
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _buildProductList(context),
      ),
    );
  }

  StreamBuilder<List<Product>> _buildProductList(BuildContext context) {
    return StreamBuilder(
        stream: database.watchAllProducts(),
        builder: (context, AsyncSnapshot<List<Product>> snapshot) {
          final products = snapshot.data ?? [];

          List rows = [];
          for (var product in products)
            rows = rows +
                [
                  {
                    "nom": product.name,
                    "prix": product.price,
                    "disponibles": product.available,
                    "vendus": product.sell,
                    "categorie": product.categorie
                  }
                ];
          // List rows = products;
          print(products[1]);
          return Editable(
            rows: rows,
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
                  available: Value(int.parse(value['disponibles'])),
                  sell: Value(int.parse(value['vendus'])),
                  categorie: Value(value['categorie']));
              database.insertProduct(product);
            },
          );
        });
  }
}
