import 'package:flutter/material.dart';
import 'package:holaWorld/background.dart';
import 'package:holaWorld/description_place.dart';

void main() {
  String gsDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";
  runApp(MaterialApp(
    title:"Flutter_reto2",
    home: Scaffold(
      appBar: AppBar(
        title: Text(
            "Home",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Lato"
          ),
            )
      ),
      body: new DescriptionPlace("Bogotá",4,gsDescription),
    ),
  ));
}


