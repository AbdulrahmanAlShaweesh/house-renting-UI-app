
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SearchField extends StatelessWidget {
  SearchField({super.key});

  TextEditingController _contrller = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 28),
      child: TextField(
        controller: _contrller,
        decoration: InputDecoration(  
          border: InputBorder.none, 
          filled: true, 
          fillColor: Colors.white, 
          hintText: "Search", 
          prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey,), 
          suffixIcon: Icon(Icons.filter_alt_outlined, color: Colors.grey,), 
        ),
      ),
    ); 
  }
}