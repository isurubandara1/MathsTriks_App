import 'package:flutter/material.dart';

class Sequences extends StatefulWidget {
  const Sequences({Key? key}) : super(key: key);

  @override
  State<Sequences> createState() => _SequencesState();
}

class _SequencesState extends State<Sequences> {
  TextEditingController x1 = TextEditingController();
  TextEditingController x2 = TextEditingController();
  TextEditingController x3 = TextEditingController();

  int y1 = 0;
  int y2 = 0;
  int y3 = 0;
  int d = 0;
  String seque = "...";

  void operations() {
    // convert usertext as int
    try {
      y1 = int.parse(x1.text);
      y2 = int.parse(x2.text);
      y3 = int.parse(x3.text);

      // Arithmatic
      if ((y2 - y1) == (y3 - y2)) {
        d = (y2 - y1);
        seque = "Arithmatic Sequence";
        print(y1); //To get first value(a)
        print(d);

        //Geometric
      } else if ((y2 / y1) == (y3 / y2)) {
        d = (y2 ~/ y1);
        seque = "Geometric Sequence";
        print(y1); //To get first value(a)
        print(d);

        //It is not a Sequence
      } else if ((y2 - y1) != (y3 - y2) && (y2 / y1) != (y3 / y2)) {
        seque = "It is not a Sequence";
        print(y1 = 0); //To get first value(a)
        print(d = 0);
      }
    } catch (e) {
      // Handle the exception, such as displaying an error message
      print("Error converting text to integer: $e");
    }
  }

  void clearTextFields() {
    x1.clear();
    x2.clear();
    x3.clear();
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
                  'Sequences',
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
                padding: const EdgeInsets.all(25.0),
                child: Image(
                  image: AssetImage("assets/images/sequence.png"),
                  width: MediaQuery.of(context).size.width - 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  "Enter first three numbers in the sequence, After click ok button",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: x1,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                        autofocus: true,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      ",",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        controller: x2,
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      ",",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: x3,
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  child: Text("OK", style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    setState(() {
                      operations();
                      clearTextFields();
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
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      "Type of \nsequence   ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Expanded(
                        child: Text("$seque",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 15,
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      "a value = ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Expanded(
                        child: Text("$y1",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    Text(
                      "d or r value = ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.brown,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Expanded(
                        child: Text("$d",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
