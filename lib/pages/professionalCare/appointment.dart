import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/colors.dart';
import 'package:project/main.dart';
import 'package:project/pages/homepage/homeScreen.dart';

class Appointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primary,
        body: Container(
          margin: EdgeInsetsDirectional.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "You have been given an appointment with the Therapist on 4 June at 10 AM",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.white),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    "Back Home",style: TextStyle(color: Colors.white),
                  ),
                  style: TextButton.styleFrom(
                    
                    backgroundColor: Colors.black,
                    
                  ),
                  
                  
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
