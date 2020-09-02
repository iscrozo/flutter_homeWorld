import 'package:flutter/material.dart';


class Background extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2do reto"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child: Image(
              image: AssetImage("assets/images/fondo.jpg"),
            ),
          )
        ],
      )
    );
  }
}
