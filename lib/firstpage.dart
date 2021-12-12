import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lesson_3_task_2/recipe/models.dart';
import 'package:lesson_3_task_2/asosiy.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.red,
        ),
      ),
      appBar: AppBar(
        title: Text("Avtoelon"),
        actions: const [
          Icon(Icons.add_circle_outline_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.attach_money_outlined),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.search),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: Model.nomi.length,
        itemBuilder: (BuildContext context, int index) {
          return asosiy(context, Model.nomi[index]);
        },
      ),
    );
  }
}
