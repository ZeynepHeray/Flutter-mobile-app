// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  LoginPage({super.key});

 @override
 State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  final _emailController = TextEditingController();
  final _passwordController =TextEditingController(); 

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(), 
      password: _passwordController.text.trim()
      ); 
  }

  @override
void dispose(){
  _emailController.dispose();
  _passwordController.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:
              const BoxDecoration(color: Color.fromRGBO(43, 211, 62, 100)),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[
              SizedBox(height: 250,),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(246, 245, 245, 1),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33),
                        topRight: Radius.circular(33))),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 60,),
                      
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(33),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 225, 220, 220),
                                blurRadius: 10,
                                offset: Offset(0, 2))
                          ], 
                        ),
                        child: TextField(
                          controller: _emailController,
                          decoration: InputDecoration(
                              hintText: "Email ",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox( height: 25,),         
                        Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(33),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 225, 220, 220),
                                blurRadius: 10,
                                offset: Offset(0, 2))
                          ],  
                        ),
                        child: TextField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox( height: 40,),         
                         GestureDetector(
                          onTap: SignIn,
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(43, 211, 62 , 100),
                            borderRadius: BorderRadius.circular(33),
                        
                          ),
                          child: Center(
                            child: Text("Sign İn"),
                            ),
                                              ),
                        ),
                    ],
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
