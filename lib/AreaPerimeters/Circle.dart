import 'package:flutter/material.dart';
import 'package:maths_tricks/AreaPerimeters/SearchBarApp.dart';

class Circle extends StatefulWidget {
  const Circle({Key? key}) : super(key: key);

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  TextEditingController controller = TextEditingController();
  double? r;

  double area() {
    if (r != null) {
      double result = 22 / 7 * (r! * r!);
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0.0;
    }
  }

  double parameter() {
    if (r != null) {
      double result = 2 * 22 / 7 * r!;
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
        title: const Text('Circle ',
            style: TextStyle(fontSize: 30, color: Colors.white)),
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
                  'assets/images/circle.png',
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
                        "Enter r value = ",
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
                          controller: controller,
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            setState(() {
                              r = double.tryParse(text);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
