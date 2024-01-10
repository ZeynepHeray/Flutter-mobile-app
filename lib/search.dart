import 'package:flutter/material.dart';
import 'package:deneme/flower.dart';
import 'package:deneme/profile.dart';


class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
       
        child: Column( 
          children: [
            SizedBox(height: 80,),
            TextField(
             
              decoration: InputDecoration(
                
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(33)),
              ),
            )
          ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromRGBO(171, 229, 178, 0.612),
        selectedItemColor: Color.fromRGBO(6, 45, 11, 0.612),
        backgroundColor: Color.fromRGBO(43, 211, 62, 100),
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
          ],
          onTap: (Index){
            if (Index == 1){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()),);
            }
          },
          ),
    );
  }
}