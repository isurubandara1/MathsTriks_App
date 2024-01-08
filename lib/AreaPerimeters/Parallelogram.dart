import 'package:flutter/material.dart';
import 'SearchBarApp.dart';

class Parallelogram extends StatefulWidget {
  const Parallelogram({Key? key}) : super(key: key);

  @override
  State<Parallelogram> createState() => _ParallelogramState();
}

class _ParallelogramState extends State<Parallelogram> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double? a;
  double? h;

  double area() {
    if (a != null && h != null) {
      double result = a! * h!;
      // Round the result to 3 decimal places
      return double.parse(result.toStringAsFixed(3));
    } else {
      return 0.0;
    }
  }

  double parameter() {
    if (a != null) {
      double result = a! * 4;
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
        title: const Text('Parallelogram', style: TextStyle(fontSize: 28)),
        leading: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SearchBarApp()),
          ),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/parallelogram.png',
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
                        controller: controller,
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
            ],
          ),
        ),
      ),
    );
  }
}
