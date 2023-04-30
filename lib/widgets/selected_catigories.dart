import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class SelectedCatigories extends StatefulWidget {
  const SelectedCatigories({super.key});

  @override
  State<SelectedCatigories> createState() => _SelectedCatigoriesState();
}

class _SelectedCatigoriesState extends State<SelectedCatigories> {
  
  int selectedIndex = 0; 
  List<IconData> icons = [
    Icons.home_rounded, 
    Icons.villa_rounded,
    Icons.apartment_rounded,
    Icons.castle_rounded
    ];
  List<String> labels = [
    "Home", "Villas", "Apartments", "Castle"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110, 
      // color: Colors.red,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: icons.length,
        itemBuilder: (context, index){ 
          return GestureDetector(
            onTap: (){ 
              setState(() {
                selectedIndex = index; 
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              height: 50, 
              width: 100, 
              decoration: BoxDecoration(
                color: selectedIndex == index? Colors.grey:Colors.white,
                borderRadius: BorderRadius.circular(10), 
              ),
              child: Column(  
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icons[index], size: 28,), 
                  Text(labels[index], style: TextStyle(fontSize: 16),)
                ],
              ),
            ),
          ); 
        }
      ),
    ); 
  }
}