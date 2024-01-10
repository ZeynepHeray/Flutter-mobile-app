// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:deneme/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class RegisterPage extends StatefulWidget{
 //final VoidCallback 
 const RegisterPage({Key? key}) :super(key: key);

 @override
 State<RegisterPage> createState() =>  _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage> {
 
  final _emailController = TextEditingController();
  final _passwordController =TextEditingController(); 

   @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
  }

 Future signup() async{
  await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: _emailController.text.trim(), 
    password: _passwordController.text.trim()
    );
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
                          controller : _emailController,
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
                          onTap: signup,
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(43, 211, 62 , 100),
                            borderRadius: BorderRadius.circular(33),
                        
                          ),
                          
                          child: Center(
                          child: Text("Sign Up",style: TextStyle(color: Colors.white, fontSize:20, ),),),
                                                     
                                              ),
                        ),
                      SizedBox( height: 40,),         
                        Container(
                          height: 60,
                          margin: EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(43, 211, 62 , 100),
                          borderRadius: BorderRadius.circular(33),

                        ),
                        child:TextButton(
                          onPressed:() {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage() )));
                            },
                           child: Center(
                            child: Text("Sign In",style: TextStyle(color: Colors.white, fontSize:20, ),),),
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
