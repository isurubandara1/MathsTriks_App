import 'package:flutter/material.dart';
import 'package:maths_tricks/Equation/QuadraticEquation.dart';
import 'package:maths_tricks/Fractions/Fractions.dart';
import 'package:maths_tricks/Sequences/Sequences.dart';
import 'AreaPerimeters/SearchBarApp.dart';
import 'StraightLine/StraightLine.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 180, 202),

      //APP BAR
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
                  '𝕄𝕒𝕥𝕙𝕤 𝕋𝕣𝕚𝕔𝕜𝕤 𝔸𝕡p',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

      //DRAWER
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 61, 128, 122),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 70.0,
                    bottom: 15,
                    child: CircleAvatar(
                      radius: 60, // Adjust the radius as needed
                      backgroundImage: AssetImage(
                          "assets/images/drawer.jpg"), // Replace with your image path
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text(
                'Area & Perimeter',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SearchBarApp()));
              },
            ),
            ListTile(
              title: Text(
                'Fraction',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Fractions()));
              },
            ),
            ListTile(
              title: Text(
                'Sequences',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Sequences()));
              },
            ),
            ListTile(
              title: Text(
                'Equation',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuadraticEquation()));
              },
            ),
            ListTile(
              title: Text(
                'Straght Line',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StraightLine()));
              },
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.share,
                ),
                title: Text(
                  'More Apps',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onTap: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListTile(
                leading: Icon(
                  Icons.star_rate,
                ),
                title: Text(
                  'Rate us',
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgImage.png"), //BACKGROUND IMAGE
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Related to Task, Press Button",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w900,
                            color: Colors.black54),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SearchBarApp()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 8, 155, 28),
                          padding: const EdgeInsets.all(20),
                          fixedSize: const Size(300, 110),
                          elevation: 2,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 8,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Center(
                        child: Text('Areas & Perimeter',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fractions()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 128, 150, 67),
                          padding: const EdgeInsets.all(20),
                          fixedSize: const Size(300, 110),
                          elevation: 2,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 8,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Center(
                        child: Text('Fractions',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sequences()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 14, 154, 179),
                          padding: const EdgeInsets.all(20),
                          fixedSize: const Size(300, 110),
                          elevation: 2,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 8,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Center(
                        child: Text('Sequences',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QuadraticEquation()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 177, 52, 135),
                          padding: const EdgeInsets.all(20),
                          fixedSize: const Size(300, 110),
                          elevation: 2,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 8,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Center(
                        child: Text('Equations',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StraightLine()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 190, 152, 24),
                          padding: const EdgeInsets.all(20),
                          fixedSize: const Size(300, 110),
                          elevation: 2,
                          side: const BorderSide(
                            color: Colors.white,
                            width: 8,
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Center(
                        child: Text('Straight Line',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 22,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
