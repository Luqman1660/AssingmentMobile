import 'package:flutter/material.dart';
import 'food.dart';
import 'beverage.dart';
import 'dessert.dart';

class Selection extends StatelessWidget {
  const Selection({
    Key? key,
    this.name,
  }) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
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
            children: [
              const Text(
                'Welcome , ',
                style: TextStyle(
                    fontFamily: 'Fasthand', fontSize: 50, color: Colors.brown),
              ),
              Text(
                name ?? '',
                style: const TextStyle(fontSize: 30.0, fontFamily: 'ChelaOne'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.topCenter,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context, Food(title: 'A & L Cake'));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),
                  child: const Text(
                    'FOODS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context, Beverage(title: 'Beverages'));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),
                  child: const Text(
                    'BEVERAGES',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextButton(
                  onPressed: () {
                    navigateNextPage(context, Dessert(title: 'Desserts'));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 10, 10, 10),
                    ),
                  ),
                  child: const Text(
                    'DESSERTS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void navigateNextPage(BuildContext context, Widget nextPage) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}
