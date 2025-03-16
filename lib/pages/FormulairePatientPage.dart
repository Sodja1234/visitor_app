import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{

  var emailCtrl=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Text("Login", style:TextStyle(color: Colors.blue, fontSize: 30),),

              SizedBox(height: 20,),
              Text("Welcome", style:TextStyle(color: Colors.blue, fontSize: 20),),

              SizedBox(height: 20,),
              Text("Plateforme de suivi des etudiants pour une promotion",
                style:TextStyle(color: Colors.blue, fontSize: 20),),

              SizedBox(height: 20,),
              Text("Email or Mobile Number", style:TextStyle(color: Colors.black, fontSize: 20),),

              SizedBox(height: 30,),
              TextField(
                  controller: emailCtrl,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  )
              ),

              SizedBox(height: 40,),
              SizedBox(width: 300,
                  child: ElevatedButton(
                      style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: Text("Valider")))

            ],
          ),
        )

    );
  }
  
}