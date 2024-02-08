import 'package:flutter/material.dart';
import 'SearchBarApp.dart';

class Trapezoid extends StatefulWidget {
  const Trapezoid({Key? key}) : super(key: key);

  @override
  State<Trapezoid> createState() => _TrapezoidState();
}

class _TrapezoidState extends State<Trapezoid> {
  TextEditingController controllera = TextEditingController();
  TextEditingController controllerb = TextEditingController();
  TextEditingController controllerc = TextEditingController();
  TextEditingController controllerd = TextEditingController();
  TextEditingController controllerh = TextEditingController();
  double? a;
  double? b;
  double? c;
  double? d;
  double? h;

  double area() {
    if (a != null && b != null && h != null && a! >= 0 && b! >= 0 && h! >= 0) {
      double result = 0.5 * h! * (a! + b!);
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0.0;
    }
  }

  double parameter() {
    if (a != null && b != null && c != null && d != null) {
      double? result = (a! + b! + c! + d!);
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
        centerTitle: true,
        toolbarHeight: 100,
        backgroundColor: Color.fromARGB(255, 61, 128, 122),
        title: const Text('Trapezoid',
            style: TextStyle(fontSize: 28, color: Colors.white)),
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchBarApp()),
          ),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/areaparaback.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              Colors.white70
                  .withOpacity(0.8), // Adjust the opacity here (0.0 - 1.0)
              BlendMode.lighten,
            ),
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/trapezoid.png',
                  width: 250,
                  height: 250,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    "For Area, enter a,b and h values only \n For Parameter, enter values without h",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                        color: Colors.brown),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter a value = ",
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          autofocus: true,
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          controller: controllerb,
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter c value = ",
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Enter d value = ",
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          controller: controllerd,
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            setState(() {
                              d = double.tryParse(text);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          controller: controllerh,
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
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Area = ${area()}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Parameter = ${parameter()}",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
