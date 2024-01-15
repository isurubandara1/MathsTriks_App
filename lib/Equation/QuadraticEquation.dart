import 'package:flutter/material.dart';
import 'dart:math';

class QuadraticEquation extends StatefulWidget {
  const QuadraticEquation({Key? key}) : super(key: key);

  @override
  State<QuadraticEquation> createState() => _QuadraticEquationState();
}

class _QuadraticEquationState extends State<QuadraticEquation> {
  TextEditingController acontroller = TextEditingController();
  TextEditingController bcontroller = TextEditingController();
  TextEditingController ccontroller = TextEditingController();

  double a = 0;
  double b = 0;
  double c = 0;

  double answer1 = 0;
  double answer2 = 0;

  void operation() {
    a = double.tryParse(acontroller.text) ?? 0;
    b = double.tryParse(bcontroller.text) ?? 0;
    c = double.tryParse(ccontroller.text) ?? 0;

    double x = (b * b) - (4 * a * c);
    double squareRoot = sqrt(x);
    answer1 = (-b + squareRoot) / (2 * a);
    answer2 = (-b - squareRoot) / (2 * a);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Set the preferred height
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 61, 128, 122),
          automaticallyImplyLeading: true, // Enable default back button
          title: const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: Padding(
                padding: EdgeInsets.only(top: 0),
                child: Text(
                  'Equations',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image(
                  image: AssetImage("assets/images/QEform.jpg"),
                  width: MediaQuery.of(context).size.width - 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  "Fill a,b and c values accourding to above formular",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "(a,b, and c should be real numbers and a should be not equeal to zreo)",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text("a = ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                          Expanded(
                              child: TextField(
                            autofocus: true,
                            controller: acontroller,
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                              child: Text("b = ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold))),
                          Expanded(
                              child: TextField(
                            controller: bcontroller,
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Text("c = ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    Expanded(
                        child: TextField(
                      controller: ccontroller,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      "X value should be ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child: Text(
                    "$answer1 or $answer2",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown),
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    operation();
                  });
                },
                child: Text(
                  "Click to view X",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                  image: AssetImage("assets/images/QE.png"),
                  width: MediaQuery.of(context).size.width - 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
