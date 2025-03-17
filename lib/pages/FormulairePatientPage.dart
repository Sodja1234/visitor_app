import 'package:flutter/material.dart';
import '../business/models/GenreSelection.dart';

class FormulairePatientPage extends StatefulWidget{
  @override
  FormulairePatientState createState() => FormulairePatientState();

  }

class FormulairePatientState extends State<FormulairePatientPage>{

  var nomCtrl=TextEditingController();

  bool isHommeState = false;
  bool isFemmeState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enregistrement Patient"),
        centerTitle: true,
        backgroundColor : Color(0xFF19103E),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: (){},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: double.infinity,),
            Icon(Icons.person_2, size:100,),

            SizedBox(height: 30,),
            Text("Nom Complet",),

            SizedBox(height: 50,),
            TextField(
                controller: nomCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                )
            ),

            SizedBox(height: 30,),
            Text("Genre",),

            SizedBox(height: 50,),
            GenreSelection(
                isHomme: isHommeState,
                isFemme: isFemmeState,
                onHommeChanged: (bool? valeur){
                  setState((){
                    isHommeState = valeur ?? false;
                  });
                },
                onFemmeChanged: (bool? valeur){
                  setState((){
                    isFemmeState = valeur ?? false;
                  });
                },
              ),

            SizedBox(height: 30,),
            ElevatedButton(
              child: Text("Creer"),
              onPressed: (){},)
          ],
        ),
      )
    );
  }
  
}