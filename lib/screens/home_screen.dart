import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No Tasks Added Yet", style:GoogleFonts.montserrat(fontWeight:FontWeight.w700)),
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue[200],
        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(10.0),
            height: 500,
            color: Colors.blue,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Add task", style: GoogleFonts.montserrat(color: Colors.white, fontSize: 20.0,)),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.close),
                  ),
                ]
              ),
              const Divider(
                color: Colors.lightBlue,
                thickness: 1.2
              ),
              SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: BorderSide(color: Colors.blue)
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter task here",
                  hintStyle:  GoogleFonts.montserrat(),
                ),
              )
            ]),
          )
        )
      ),
    );
  }
}