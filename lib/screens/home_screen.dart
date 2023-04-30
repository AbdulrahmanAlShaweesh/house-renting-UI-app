

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:house_renting_app/constants/colors.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:house_renting_app/widgets/recom_items.dart';
import 'package:house_renting_app/widgets/selected_catigories.dart';
import 'package:house_renting_app/widgets/sug_list.dart';
import 'package:house_renting_app/widgets/text_field.dart';
 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selected_index = 0; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0.0,
        title: Row(
          children: [
            Icon(
              Icons.location_on, size: 30,color: KPColor,), 
              SizedBox(width: 10,),
              Text("Tokeyo, Japan", style: TextStyle(color: Colors.black, fontSize: 20),)
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed : (){},
              icon: Icon(Icons.notifications, color: KPColor, size: 30,), 
            ),
          ), 
        ],
      ),
      body: ListView(
        children: [
          SearchField(),
          SelectedCatigories(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recommendation for you", style: TextStyle(fontSize: 18, letterSpacing: 0.8, fontWeight: FontWeight.bold, color: Colors.black),),
                Text("See all", style: TextStyle(fontSize: 18, letterSpacing: 0.8, fontWeight: FontWeight.bold, color: Colors.blue),)
              ],
            ),
          ), 
          RecomiItems(),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Suggestion for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),), 
                Text("See all", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KPColor),),
              ],),
            ),
          SugiList(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected_index,
        elevation: 0.0,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        selectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(fontSize: 16, color: KPColor),
        onTap: (index){
          setState(() {
            _selected_index = index; 
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home, size: 30,), label: "Home"), 
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: "Search"), 
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined), label: "Messages"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "Profile"), 
         ]
      ),
    );
  }
}