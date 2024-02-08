import "package:flutter/material.dart";

class Tab4Screen extends StatefulWidget {
  @override
  _Tab4ScreenState createState() => _Tab4ScreenState();
}

class _Tab4ScreenState extends State<Tab4Screen> {
  int x = 0; // up number of answer fraction
  int y = 0; // down number of answer fraction
  int? v1, v2, v3, v4; // Text field values v1/v2 + v3/v4

  void operation() {
    if (v1 != null && v2 != null && v3 != null && v4 != null) {
      x = v1! * v4!;
      y = v2! * v3!;

      int gcd = findGCD(x, y);

      x = x ~/ gcd;
      y = y ~/ gcd;
    }
  }

// Function to find the greatest common divisor
  int findGCD(int a, int b) {
    while (b != 0) {
      final int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  TextEditingController x1 = TextEditingController();
  TextEditingController x2 = TextEditingController();
  TextEditingController y1 = TextEditingController();
  TextEditingController y2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter values and press equal button to view the answer",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: TextField(
                        controller: x1,
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          setState(() {
                            v1 = int.tryParse(text);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: '.....',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: TextField(
                        controller: x2,
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          setState(() {
                            v2 = int.tryParse(text);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: '.....',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50,
                      height: 100,
                      child: Center(
                        child: Text(
                          "/",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: TextField(
                        controller: y1,
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          setState(() {
                            v3 = int.tryParse(text);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: '.....',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: TextField(
                        controller: y2,
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          setState(() {
                            v4 = int.tryParse(text);
                          });
                        },
                        decoration: InputDecoration(
                          labelText: '.....',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 50,
                  child: Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey,
                        elevation: 3,
                      ),
                      child: Center(
                        child: Text(
                          "=",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          operation();
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "$x",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
                Center(
                    child: Text(
                  "—",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
                Center(
                    child: Text(
                  "$y",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
