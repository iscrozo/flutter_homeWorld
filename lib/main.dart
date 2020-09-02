import 'package:flutter/material.dart';
import 'package:holaWorld/background.dart';
import 'package:holaWorld/description_place.dart';

void main() {
  runApp(MaterialApp(
    title:"Flutter_reto2",
    home: Scaffold(
      appBar: AppBar(
        title: Text("test")
      ),
      body: new DescriptionPlace(),
    ),
  ));
}


