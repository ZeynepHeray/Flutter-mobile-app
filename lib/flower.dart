import 'package:deneme/profile.dart';
import 'package:flutter/material.dart';
import 'package:deneme/search.dart';

class FlowerPage extends StatefulWidget{
 //final VoidCallback 
 const FlowerPage({Key? key}) :super(key: key);

 @override
 State<FlowerPage> createState() =>  _FlowerPageState();

}

class _FlowerPageState extends State<FlowerPage> {
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 100)),
                child: Column(
                children: [
                  SizedBox(height: 30,),
                 ListTile(
                title: Text("<-"),
                onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()),);
             },) 
                ],
                ),
                
                ),
                )
               ],
              ),
                
              ),
              
              
            
          );
    
    
  }
}