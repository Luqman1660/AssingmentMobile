import 'package:flutter/material.dart';

class DD4 extends StatefulWidget {
  const DD4({Key? key});

  @override
  State<DD4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<DD4> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dessert4.png',
                width: 250,
                height: 250,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  color: Colors.grey.shade200,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Chocolate Indulgence Cake',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Text(
                'Price:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                'RM 11.75',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                'Ingredients:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Center(
                child: Text(
                  ' Cocoa Sponge, Belgian White Chocolate, Belgian Dark Chocolate, Snow Powder',
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
