import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //variable estrella
    final star = Container(
      margin: EdgeInsets.only(
        top:323.0,
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
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. "
      ,style: TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.w300,
        color: Color(0xFF56575a)
        ),
      ),
    );

    // varriable title
    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0 ,
          ),
          child: Text(
            "Duwili Ela",
            style: TextStyle(
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
            star
          ],
        ),
      ],
    );
    return Column(
      children: <Widget>[
        title_stars,
        txtDescription
      ],
    );
  }
}
