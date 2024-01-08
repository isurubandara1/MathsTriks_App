import 'package:flutter/material.dart';
import 'package:maths_tricks/Fractions/Fractions.dart';
import 'package:maths_tricks/Sequences/Sequences.dart';
import 'AreaPerimeters/SearchBarApp.dart';

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
          backgroundColor: Colors.pinkAccent,
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
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {},
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
                      padding: EdgeInsets.all(6.0),
                      child: Text(
                        "Related to your task, click on the button to fulfill.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
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
                          backgroundColor: Color.fromARGB(255, 199, 90, 163),
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
                      height: 20,
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
                          backgroundColor: Color.fromARGB(255, 199, 90, 163),
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
                      height: 20,
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
                          backgroundColor: Color.fromARGB(255, 199, 90, 163),
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
                      height: 20,
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
