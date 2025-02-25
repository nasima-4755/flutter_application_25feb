import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      size: 60,
                      color: Colors.blue,
                    ),
                    TextButton(onPressed: () {}, child: Icon(Icons.close)),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text("Images"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settigns"),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text('Drawer'),
          backgroundColor: Colors.blue,
          elevation: 10,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfrtq8ddSfekNypcgtvBS5r-f3l1rGtfEgzw&s"),
            Image.network(
                "https://gratisography.com/wp-content/uploads/2024/11/gratisography-augmented-reality-800x525.jpg"),
          ],
        )),
      ),
    );
  }
}
