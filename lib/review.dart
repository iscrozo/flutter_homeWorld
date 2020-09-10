import 'package:flutter/material.dart';
import 'package:holaWorld/rating.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/user.png";
  String gsUser = "Nombre1 Apellido1";
  //String gsDetails = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ";
  String gsDetails = "2 review 2 phots ";
  double giStarsReview = 3.4 ;
  String gsCommentReview = "It's a beautiful place";
  Review();
  //DescriptionPlace(this.pathImage, this.gsUser, this.gsDetails, this.giStarsReview, this.gsCommentReview);


  @override
  Widget build(BuildContext context) {

    final userComment = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        gsCommentReview,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              left: 20.0),
          child: Text(gsDetails,
            textAlign: TextAlign.left,
            style: TextStyle(
                fontFamily: "Lato",
                fontSize: 13.0,
                color: Color(0xFFa3a5a7)
            ),
          ),
        ),
        Rating(giStarsReview, 5.0, 14.0)
      ],
    );

    final userName = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        gsUser,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 17
        ) ,),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(
          top:20,
          left: 20
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


    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }
}
