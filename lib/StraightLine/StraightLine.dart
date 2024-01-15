import 'package:flutter/material.dart';
import '../HomePage.dart';

class StraightLine extends StatefulWidget {
  const StraightLine({Key? key}) : super(key: key);

  @override
  State<StraightLine> createState() => _StraightLineState();
}

class _StraightLineState extends State<StraightLine> {
  TextEditingController x1Controller = TextEditingController();
  TextEditingController y1Controller = TextEditingController();
  TextEditingController x2Controller = TextEditingController();
  TextEditingController y2Controller = TextEditingController();

  dynamic m = "...";
  dynamic c = "...";
  dynamic formular = ".....";

  void operations() {
    double x1 = double.parse(x1Controller.text);
    double y1 = double.parse(y1Controller.text);
    double x2 = double.parse(x2Controller.text);
    double y2 = double.parse(y2Controller.text);

    if (y1 == y2) {
      m = 0;
      dynamic tempC = y2 - (0 * x2);
      c = double.parse(tempC.toStringAsFixed(2));
      formular = "Y = $c";
    } else {
      dynamic tempM = (y2 - y1) / (x2 - x1);
      m = double.parse(tempM.toStringAsFixed(2));
      dynamic tempC = y2 - (tempM * x2);
      c = double.parse(tempC.toStringAsFixed(2));
      formular = "Y = $m X + $c";
    }
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
                  'Straight Line',
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
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  "assets/images/straLine.png",
                  width: MediaQuery.of(context).size.width - 40,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Enter any 2 points x & y values",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: [
                    const Text(
                      "X1 = ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      autofocus: true,
                      controller: x1Controller,
                    )),
                    const SizedBox(width: 10),
                    const Text(
                      "Y1 = ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      controller: y1Controller,
                    )),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  children: [
                    const Text(
                      "X2 = ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: TextField(controller: x2Controller)),
                    const SizedBox(width: 10),
                    const Text(
                      "Y2 = ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      controller: y2Controller,
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  child: Text(
                    "View values",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    setState(() {
                      operations();
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "m = ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$m",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "C = ",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$c",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(
                  "Equation of Straight line  ",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "$formular",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
