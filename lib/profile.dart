// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:deneme/flower.dart';
import 'package:deneme/search.dart';
import 'package:firebase_auth/firebase_auth.dart';


class ProfilePage extends StatelessWidget{
  ProfilePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(246, 245, 245, 1)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              ListTile(
                trailing: Icon(Icons.more_horiz,),
                onTap: () {
                  signUserOut();
                },
              ),
              ListTile(
                title: Text("Çiçeklerim"),
                onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => FlowerPage()),);
             },
              ),
              SizedBox(height: 33,),
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(166, 167, 166, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(166, 167, 166, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                
                height: 200,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(166, 167, 166, 1),
                  borderRadius: BorderRadius.circular(25),
                ),
              )
            ],
          ),
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(43, 211, 62, 100),
        unselectedItemColor: Color.fromRGBO(171, 229, 178, 0.612),
        selectedItemColor: Color.fromRGBO(6, 45, 11, 0.612),
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
          ],
          onTap: (Index){
            if (Index == 0){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()),);
            }
          },
          ),
    );
  }
}