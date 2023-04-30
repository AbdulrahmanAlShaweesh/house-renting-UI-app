
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:house_renting_app/constants/colors.dart';
import 'package:house_renting_app/models/house_item_data.dart';
import 'package:house_renting_app/screens/detials_screen.dart';

class SugiList extends StatefulWidget {
  const SugiList({super.key});

  @override
  State<SugiList> createState() => _SugiListState();
}

class _SugiListState extends State<SugiList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10.0),
      height: 350, 
      // color: KPColor,
      child: Container(
        width: double.infinity, 
        // color: Colors.amber,
        child: ListView.builder(
          itemCount: Items.recomiation_houses.length,
          itemBuilder: (context, index){ 
             return GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){ 
                  return DetialsScreen(items: Items.recomiation_houses[index],);
                })); 
              },
               child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Container(
                          height: 180, 
                          width: double.infinity,
                          child: Image.network(Items.recomiation_houses[index].image_url!, fit: BoxFit.cover,), 
                        ),
                      ),
                    ), 
                    Container(
                      margin: EdgeInsets.only(left: 10, top: 10.0),
                      child: Text(
                        Items.recomiation_houses[index].Catigoriy!, style: TextStyle(
                          fontSize: 18.0, 
                          fontWeight: FontWeight.w600, 
                          color: Colors.blue.shade400, 
                         ),
                      ),
                    ),
                    SizedBox(height: 8.0,), 
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(Items.recomiation_houses[index].title!, style: TextStyle(
                        fontSize: 20.0, 
                        fontWeight: FontWeight.bold 
                        ),
                      ),
                    ), 
                    SizedBox(height: 8.0,),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,), 
                          SizedBox(width: 8,),
                          Text(Items.recomiation_houses[index].location!, style: TextStyle(
                            fontSize: 18.0, color: Colors.grey
                          ),)
                        ],
                      ),
                    ), 
                    SizedBox(height: 20,), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("${Items.recomiation_houses[index].price}\$ Per Month", style: TextStyle(
                            fontSize: 22.0, 
                            fontWeight: FontWeight.bold, 
                            color: Colors.grey
                            ),
                          ),
                        ),
                        Icon(Icons.favorite_outline,  color: Colors.grey,)
                      ],
                    ), 
                    // SizedBox(height: 180,)
                  ],
                ),
               ),
             ); 
          }
        ),
      ),
    );
  }
}