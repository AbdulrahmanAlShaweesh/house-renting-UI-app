import 'package:flutter/material.dart';
import 'package:house_renting_app/constants/colors.dart';
import 'package:house_renting_app/models/house_item_data.dart';

class DetialsScreen extends StatefulWidget {
  DetialsScreen({super.key, this.items});

  Items? items; 

  @override
  State<DetialsScreen> createState() => _DetialsScreenState();
}

class _DetialsScreenState extends State<DetialsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: (){
              Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: KPColor, size: 28,)),
        title: Text("${widget.items!.title!}", style: TextStyle(
            color: Colors.black, 
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        // color: Colors.red,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: NetworkImage(widget.items!.image_url!), fit: BoxFit.cover 
                  )
                ), 
              ), 
              SizedBox(height: 10,), 
              Text(widget.items!.Catigoriy!, style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.w600, 
                  color: KPColor,
                ), 
              ),
              SizedBox(height: 10,),  
              Text(widget.items!.title!, style: TextStyle(
                  fontSize: 22, 
                  fontWeight: FontWeight.w600
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.grey, size: 28,), 
                  SizedBox(height: 10, width: 7,),
                  Text(widget.items!.location!, style: TextStyle(
                    fontSize: 18, 
                    fontWeight: FontWeight.w500, 
                    color: Colors.grey
                  ),)
                ],
              ),
              SizedBox(height: 20,),  
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.items!.price!}\$ Per Month', style: TextStyle(
                    fontSize: 22, 
                    fontWeight: FontWeight.bold
                  ),),
                  Icon(Icons.favorite_outline, size: 28,)
                ],
              ), 
              SizedBox(height: 80,), 
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 60, 
                width: double.infinity,
                decoration: BoxDecoration(
                  color: KPColor, 
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text("Rent Now", style: TextStyle(
                  fontSize: 18, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.white
                ),),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}