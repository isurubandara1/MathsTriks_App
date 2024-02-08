import 'package:flutter/material.dart';
import 'SearchBarApp.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({Key? key}) : super(key: key);

  @override
  State<Rectangle> createState() => _RectangleState();
}

class _RectangleState extends State<Rectangle> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double? l;
  double? w;

  double area() {
    if (l != null && w != null) {
      double result = l! * w!;
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0.0;
    }
  }

  double parameter() {
    if (l != null && w != null) {
      double result = 2 * (l! + w!);
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
        title: const Text('Rectangle',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
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
                  'assets/images/rectangle.png',
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
                        "Enter l value =",
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
                              l = double.tryParse(text);
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
                        "Enter w value = ",
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          controller: controller2,
                          keyboardType: TextInputType.number,
                          onChanged: (text) {
                            setState(() {
                              w = double.tryParse(text);
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
