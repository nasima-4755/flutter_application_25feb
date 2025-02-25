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
        body: SingleChildScrollView(
            child: Column(
          children: [
            Image.network(
                "https://www.piclumen.com/wp-content/uploads/2024/10/piclumen-upscale-after.webp"),
            Image.network(
                "https://images.nightcafe.studio/jobs/Kon9sWTQI7XcJrThmZ57/Kon9sWTQI7XcJrThmZ57--1--3qief.jpg?tr=w-1600,c-at_max"),
          ],
        )),
      ),
    );
  }
}
