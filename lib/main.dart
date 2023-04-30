
import 'package:flutter/material.dart';
import 'package:house_renting_app/screens/home_screen.dart';

void main() => runApp(RentingHouseApp(),); 

class RentingHouseApp extends StatelessWidget {
  const RentingHouseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}