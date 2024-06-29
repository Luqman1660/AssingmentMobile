import 'package:flutter/material.dart';

class D4 extends StatefulWidget {
  const D4({Key? key});

  @override
  State<D4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<D4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Beverage'),
          backgroundColor: Colors.brown,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/beverage4.png',
                width: 250,
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Color.fromARGB(253, 247, 243, 167),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Caramel Mocha',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Text(
                'Price:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'RM 16.75',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Text(
                  'Sugar, whipping Cream, vanilla Extract, Dutch Cocoa, Caramel Syrup, Ice',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}
