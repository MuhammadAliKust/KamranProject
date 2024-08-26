import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "First App",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          actions: [
            Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
          ],
        ),
        body: Row(
          children: [
            Text(
              "First Text",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 10,),
            Text(
              "Second Text",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(width: 20,),
            Text(
              "Third Text",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.green,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
