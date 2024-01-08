import 'package:flutter/material.dart';
import 'package:maths_tricks/HomePage.dart';

import 'Circle.dart';
import 'Parallelogram.dart';
import 'Rectangle.dart';
import 'Sector.dart';
import 'Square.dart';
import 'Trapezoid.dart';
import 'Triangle.dart';

class Country {
  final String name;
  final String flagImage;

  Country(this.name, this.flagImage);
}

// Define a list of countries
final List<Country> countries = [
  Country('Square', 'assets/images/square.png'),
  Country('Parallelogram', 'assets/images/parallelogram.png'),
  Country('Rectangle', 'assets/images/rectangle.png'),
  Country('Triangle', 'assets/images/triangle1.png'),
  Country('Trapezoid', 'assets/images/trapezoid.png'),
  Country('Circle', 'assets/images/circle.png'),
  Country('Sector', 'assets/images/sector.png'),
];

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  _SearchBarAppState createState() => _SearchBarAppState();
}

class _SearchBarAppState extends State<SearchBarApp> {
  final TextEditingController _searchController = TextEditingController();
  String _searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 231, 199, 220),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.pinkAccent,
        title: const Text('Search Continent', style: TextStyle(fontSize: 23)),
        leading: GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage())),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 26, 16, 16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2),
              child: TextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _searchText = value;
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter the Continent ...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(255, 17, 17, 17)),
                  ),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: countries.length,
                itemBuilder: (context, index) {
                  if (_searchText.isNotEmpty &&
                      !countries[index]
                          .name
                          .toLowerCase()
                          .contains(_searchText.toLowerCase())) {
                    return Container();
                  }

                  return ListTile(
                    contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
                    leading: Image.asset(
                      countries[index].flagImage,
                      width: 60,
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 219, 108, 141),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          height: 50,
                          child: Center(
                              child: Text(
                            countries[index].name,
                            style: const TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ))),
                    ),
                    onTap: () {
                      if (countries[index].name == 'Square') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Square();
                            },
                          ),
                        );
                      } else if (countries[index].name == 'Parallelogram') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Parallelogram();
                            },
                          ),
                        );
                      } else if (countries[index].name == 'Rectangle') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Rectangle();
                            },
                          ),
                        );
                      } else if (countries[index].name == 'Triangle') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Triangle();
                            },
                          ),
                        );
                      } else if (countries[index].name == 'Trapezoid') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Trapezoid();
                            },
                          ),
                        );
                      } else if (countries[index].name == 'Circle') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Circle();
                            },
                          ),
                        );
                      } else if (countries[index].name == 'Sector') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Sector();
                            },
                          ),
                        );
                      }
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
