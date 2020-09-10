import 'package:flutter/material.dart';
import 'package:holaWorld/review.dart';

class DescriptionPlace extends StatelessWidget {

  String gsNamePlace;
  int giCountStars;
  String gsDescriptionPlace ;

  // crear un constructor
  DescriptionPlace(this.gsNamePlace, this.gsDescriptionPlace);

  @override
  Widget build(BuildContext context) {

    // variable descripcion
    final txtDescription = Container(
      margin: EdgeInsets.only(
        top:20.0,
        right: 20.0,
        left: 20.0,
        bottom: 10.0
      ),
      child: Text(
        gsDescriptionPlace
      ,style: TextStyle(
        fontFamily: "Lato",
        fontSize: 16.0,
        fontWeight: FontWeight.w300,
        color: Color(0xFF56575a)
        ),
      ),
    );

    // variable title
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 280.0,
            left: 20.0,
            right: 20.0 ,
          ),
          child: Text(
            gsNamePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30.0,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        // vamos a crear las estrellas
      ],
    );
    return Column(
      children: <Widget>[
        title_stars,
        txtDescription,
        Review(),
      ],
    );
  }
}
