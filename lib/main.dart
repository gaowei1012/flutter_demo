import 'package:flutter/material.dart';
import 'package:flutter_trip/navigation/tab_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabNavigation(),
    );
  }
}