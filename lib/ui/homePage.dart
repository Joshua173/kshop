import 'package:flutter/material.dart';
import 'product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var taskList = [
    'one',
    'two',
    'three',
    'four',
    'five',
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: List.generate(
          taskList.length,
          (index) {
            return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductPage()),
                        );
                      },
                      child: Text(taskList[index]),
                    ),
                  ),
                ]);
          },
        ),
      ),
    ));
  }
}

class TaskBox extends StatelessWidget {
  TaskBox({this.text});

  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(),
      ),
      child: Center(
        child: text,
      ),
    );
  }
}

