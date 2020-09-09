import 'package:flutter/material.dart';
import 'package:holaWorld/review.dart';

class DescriptionPlace extends StatelessWidget {

  String gsNamePlace;
  int giCountStars;
  String gsDescriptionPlace ;

  // crear un constructor

  DescriptionPlace(this.gsNamePlace, this.giCountStars, this.gsDescriptionPlace);



  @override
  Widget build(BuildContext context) {

  // objeto estrella mitad
    final star_half = Container(
      margin: EdgeInsets.only(
        top:283.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ) ,
    );
  // objeto estrella bordeada
    final star_border = Container(
      margin: EdgeInsets.only(
        top:283.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ) ,
    );

    // objeto estrella completa
    final star = Container(
      margin: EdgeInsets.only(
        top:283.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ) ,
    );

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
        Row(
          children: <Widget>[
            star,
            star,
            star_half,
            star_border
          ],
        ),
      ],
    );
    return Column(
      children: <Widget>[
        title_stars,
        txtDescription,
        Review("assets/img/user.png")
      ],
    );
  }
}
