import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage ="assets/img/user.png";
  Review (this.pathImage);

  @override
  Widget build(BuildContext context) {

    // objeto estrella mitad
    final star_half = Container(
      margin: EdgeInsets.only(
        top:2.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
        size: 12,
      ) ,
    );
    // objeto estrella bordeada
    final star_border = Container(
      margin: EdgeInsets.only(
        top:2.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
        size: 12,
      ) ,
    );

    // objeto estrella completa
    final star = Container(
      margin: EdgeInsets.only(
        top:2.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
        size: 12,
      ) ,
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        )
      ),
    );
    // TODO: implement build

    final descriptionComment = Container(
      margin: EdgeInsets.only(
        top: 5,
        left: 10
      ),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Sebastian Rozo",
                style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 15
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 1
              ),child: Row(
              children: <Widget>[
                star,
                star,
                star_half,
                star_border
              ],
            ),
            ),
            Container(
              child: Text("Es un sitio espectacular",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),),
            )
          ],
        ),
    );

    return Row(
      children: <Widget>[
        photo,
        descriptionComment

      ],
    );


  }

}