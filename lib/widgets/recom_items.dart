 
import 'package:flutter/material.dart';
import 'package:house_renting_app/constants/colors.dart';
import 'package:house_renting_app/models/house_item_data.dart';
import 'package:house_renting_app/screens/detials_screen.dart';

class RecomiItems extends StatefulWidget {
  RecomiItems({super.key});
  @override
  State<RecomiItems> createState() => _RecomiItemsState();
}

class _RecomiItemsState extends State<RecomiItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350, 
      width: double.infinity,
      // color: Colors.white,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Items.recomiation_houses.length,
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetialsScreen(items: Items.recomiation_houses[index],);
              }));
            },
            child: Container(
              
              margin: EdgeInsets.only(right: 20),
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(8.0), 
                border: Border.all(color: Colors.grey.shade200)
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), 
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(Items.recomiation_houses[index].image_url!, fit: BoxFit.cover,), 
                       ),
                     ),
                     SizedBox(height: 10,),
                     Container(
                      child: Text(
                        Items.recomiation_houses[index].Catigoriy!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.blue.shade400),),
                     ), 
                     SizedBox(height: 8.0,),
                     Container(
                      width: MediaQuery.of(context).size.width*0.7,
                      child: Text(
                        Items.recomiation_houses[index].title!, style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                     ), 
                     SizedBox(height: 8.0,),
                     Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,  
                        children: [
                          Icon(Icons.location_on, color: Colors.grey,),
                          Text(Items.recomiation_houses[index].location!, style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.grey,
                            ),
                          )
                        ],
                      ),
                     ),
                     SizedBox(height: 20.0,),
                     Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${Items.recomiation_houses[index].price!}\$ Per Month", style: TextStyle(
                              fontSize: 22.0, 
                              fontWeight: FontWeight.bold, 
                              // letterSpacing: 0.6
                            ),
                          ),
                          IconButton(
                            onPressed: (){}, 
                            icon: Icon(Icons.favorite_outline)
                          )
                        ],
                      ),
                    ),  
                  ],
                ),
              ),
            ),
          ); 
        }
      ),
    ); 
  }
}