import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/database.dart';

class NewProductInput extends StatefulWidget {
  const NewProductInput({
    Key key,
  }) : super(key: key);

  @override
  _NewProductInputState createState() => _NewProductInputState();
}

class _NewProductInputState extends State<NewProductInput> {
  TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          _buildTextField(context),
          _buildTextField(context),
          _buildTextField(context),
          _buildTextField(context),
          _buildTextField(context),
          // _buildDateButton(context),
        ],
      ),
    );
  }

  Expanded _buildTextField(BuildContext context) {
    return Expanded(
        child: TextField(
      controller: controller,
      decoration: InputDecoration(hintText: 'Product Name'),
      onSubmitted: (inputName) {
        final database = Provider.of<MyDatabase>(context);
        // final product = Product(name: inputName)
      },
    ));
  }
}
