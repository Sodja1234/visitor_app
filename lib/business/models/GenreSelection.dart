import 'package:flutter/material.dart';

class GenreSelection extends StatelessWidget{
  final bool isHomme;
  final bool isFemme;
  final ValueChanged<bool?> onHommeChanged;
  final ValueChanged<bool?> onFemmeChanged;
  GenreSelection({
    required this.isHomme,
    required this.isFemme,
    required this.onHommeChanged,
    required this.onFemmeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Checkbox(
            value: isHomme,
            onChanged: onHommeChanged,),
        Text('Homme'),
        Checkbox(
            value: isFemme,
            onChanged: onFemmeChanged,),
        Text('Femme'),
      ],
    );
  }

}