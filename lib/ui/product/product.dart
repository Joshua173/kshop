import 'package:flutter/material.dart';
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
    final database = Provider.of<MyDatabase>(context);
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
            final product = Product(
                id: value['row'],
                name: value['nom'],
                price: num.parse(value['prix']),
                availale: num.parse(value['disponibles']),
                sell: num.parse(value['vendus']),
                categorie: value['categorie']);
            database.insertProduct(product);
          },
        ),
      ),
    );
    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       // Add your onPressed code here!
    //     },
    //     child: const Icon(
    //       Icons.add,
    //       size: 50,
    //     ),
    //     backgroundColor: Colors.grey,
    //   ),
    // );
  }
}

// StreamBuilder<List<Product>> _buildProductList(BuildContext context) {
//   final database = Provider.of<MyDatabase>(context);
//   return StreamBuilder(
//     stream: database.watchAllProducts(),
//     builder: (context, AsyncSnapshot<List<Product>> snapshot) {
//       final products = snapshot.data ?? [];

//       return ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (_, index) {
//           final itemProduct = products[index];
//           return _buildListItem(itemProduct, database);
//         },
//       );
//     },
//   );
// }

// Widget _buildListItem(Product itemProduct, MyDatabase database) {
//   return Table(
//     border: TableBorder.all(),
//     children: [
//       TableRow(children: [
//         Text('Sport',
//             textAlign: TextAlign.center,
//             style: TextStyle(fontWeight: FontWeight.bold)),
//       ]),
//     ],
//   );
// }
