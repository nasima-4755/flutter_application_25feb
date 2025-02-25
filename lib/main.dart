import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Shopping Cart'),
        ),
        body: CartPage(),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              CartItem(
                  name: 'Meris Shoes', price: 120, quantity: 1, total: 140),
              CartItem(
                  name: 'Leather Bag', price: 102, quantity: 2, total: 204),
              CartItem(name: 'Watch', price: 250, quantity: 1, total: 250),
              CartItem(name: 'Chair', price: 150, quantity: 3, total: 450),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$1024',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // Checkout logic
              },
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Check out',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final int price;
  final int quantity;
  final int total;

  CartItem(
      {required this.name,
      required this.price,
      required this.quantity,
      required this.total});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('\$$price × $quantity = \$$total'),
          ],
        ),
      ),
    );
  }
}
