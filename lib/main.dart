import 'package:flutter/material.dart';
import 'package:mediumcart/screens/home/home.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.comfortable,
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Colors.white,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        canvasColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
