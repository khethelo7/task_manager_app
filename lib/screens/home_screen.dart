import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Manager"), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No Tasks Added Yet", style:GoogleFonts.montserrat(fontWeight:FontWeight.w700)),
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton(
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
                    child: const Icon(Icons.close),
                  ),
                ]
              ),
              const Divider(
                color: Colors.lightBlue,
                thickness: 1.2
              ),
              const SizedBox(height: 5.0),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(color: Colors.blue)
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter task",
                  hintStyle:  GoogleFonts.montserrat(),
                ),
              ),
              const SizedBox(height: 20.0,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200.0,
                child: Row(
                  children: [
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) - 10,
                      child: ElevatedButton(
                        // ignore: avoid_print
                        onPressed: () => print("reset pressed"),
                        child: Text("RESET", style: GoogleFonts.montserrat()),
                      ),
                    ),
                    SizedBox(
                      width: (MediaQuery.of(context).size.width / 2) - 10,
                      child: ElevatedButton(
                        // ignore: avoid_print
                        onPressed: () => print("add pressed"),
                        child: Text("ADD", style: GoogleFonts.montserrat()),
                      ),
                    )
                  ],
                ),
              )
            ]),
          )
        ), 
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}