import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager")),
      body: Center(child: Text("No Tasks Added Yet"),),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[200],
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            height: 500,
            color: Colors.blue,
            child: Column(children: [Text("Add task")]),
          )
        )
      ),
    );
  }
}