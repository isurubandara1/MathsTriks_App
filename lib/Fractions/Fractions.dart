import 'package:flutter/material.dart';
import 'package:maths_tricks/HomePage.dart';
import 'Tab1Screen.dart';
import 'Tab2Screen.dart';
import 'Tab3Screen.dart';
import 'Tab4Screen.dart';

class Fractions extends StatefulWidget {
  @override
  _FractionsState createState() => _FractionsState();
}

class _FractionsState extends State<Fractions> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(255, 61, 128, 122),
          title: Text("Fractions",
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Addition",
                icon: Icon(Icons.add, color: Colors.white),
              ),
              Tab(
                text: "Subtraction",
                icon: Icon(Icons.remove, color: Colors.white),
              ),
              Tab(
                text: "Multiplication",
                icon: Icon(Icons.close, color: Colors.white),
              ),
              Tab(
                text: "Divide",
                icon: Icon(Icons.abc, color: Colors.white),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab1Screen(), // Widget for "Addition" tab
            Tab2Screen(), // Widget for "Subtraction" tab
            Tab3Screen(), // Widget for "Multiplication" tab
            Tab4Screen(), // Widget for "Divide" tab
          ],
        ),
      ),
    );
  }
}
