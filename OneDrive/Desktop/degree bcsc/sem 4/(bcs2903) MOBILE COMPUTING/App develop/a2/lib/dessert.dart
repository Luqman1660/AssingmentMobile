import 'package:flutter/material.dart';
import 'ddessert1.dart';
import 'ddessert2.dart';
import 'ddessert3.dart';
import 'ddessert4.dart';
import 'ddessert5.dart';
import 'ddessert6.dart';

class Dessert extends StatelessWidget {
  const Dessert({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dessert'),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DD1()),
                      );
                    },
                    child: Image.asset(
                      'assets/dessert1.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DD2()),
                      );
                    },
                    child: Image.asset(
                      'assets/dessert2.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DD3()),
                      );
                    },
                    child :Image.asset(
                      'assets/dessert3.png',
                      height: 150,
                      width: 150,
                    ),
                  ),
                  const SizedBox(width: 20),
                   GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DD4()),
                      );
                    },
                  child :Image.asset(
                    'assets/dessert4.png',
                    height: 150,
                    width: 150,
                  ),
                   ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DD5()),
                      );
                    },
                  child :Image.asset(
                    'assets/dessert5.png',
                    height: 150,
                    width: 150,
                  ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DD6()),
                      );
                    },
                  child :Image.asset(
                    'assets/dessert6.png',
                    height: 150,
                    width: 150,
                  ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
