import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Center(
          child: Text(
            'Produit',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
      body: Center(
          child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              child: Table(
                border: TableBorder.symmetric(
                    inside: BorderSide(width: 2, color: Colors.black),
                    outside: BorderSide(width: 3, color: Colors.black)),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    Text('Alpha',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Text('Beta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Text('Gamma',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Text('Kappa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Text('Sigma',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                    Text('Teta',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40)),
                  ]),
                  TableRow(children: [
                    Text(
                      'Soccer',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      '11',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Enter somehting'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Enter somehting'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Enter somehting'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Enter somehting'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Enter somehting'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration:
                            const InputDecoration(hintText: 'Enter somehting'),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(
          Icons.add,
          size: 50,
        ),
        backgroundColor: Colors.grey,
      ),
    );
  }
}
