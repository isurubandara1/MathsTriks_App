import 'dart:math';
import 'package:flutter/material.dart';
import 'SearchBarApp.dart';

class Triangle extends StatefulWidget {
  const Triangle({Key? key}) : super(key: key);

  @override
  State<Triangle> createState() => _TriangleState();
}

class _TriangleState extends State<Triangle> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double? b;
  double? h;

  double area() {
    if (b != null && h != null) {
      double result = 0.5 * b! * h!;
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0.0;
    }
  }

  double parameter() {
    if (b != null) {
      double result = b! * 4;
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0;
    }
  }

  TextEditingController controllera = TextEditingController();
  TextEditingController controllerb2 = TextEditingController();
  TextEditingController controllerc = TextEditingController();
  double? a;
  double? b2;
  double? c;

  double area2() {
    if (a != null && b2 != null && c != null) {
      double s = 0.5 * (a! + b2! + c!);
      double A = sqrt(s * (s - a!) * (s - b2!) * (s - c!));
      return double.parse(A.toStringAsFixed(3));
    } else {
      return 0.0;
    }
  }

  double parameter2() {
    if (a != null && b2 != null && c != null) {
      double result = a! + b2! + c!;
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.pinkAccent,
        title: const Text('Triangle', style: TextStyle(fontSize: 28)),
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchBarApp()),
          ),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/triangle1.png',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter b value =",
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          b = double.tryParse(text);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter h value = ",
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: controller2,
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          h = double.tryParse(text);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Area = ${area()}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Parameter = ${parameter()}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Image.asset(
              'assets/images/triangle2.png',
              width: 250,
              height: 250,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter a value =",
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: controllera,
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          a = double.tryParse(text);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter b value = ",
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: controllerb2,
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          b2 = double.tryParse(text);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter c value =",
                    style: TextStyle(
                      fontSize: 22,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      controller: controllerc,
                      keyboardType: TextInputType.number,
                      onChanged: (text) {
                        setState(() {
                          c = double.tryParse(text);
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Area = ${area2()}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Parameter = ${parameter2()}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
