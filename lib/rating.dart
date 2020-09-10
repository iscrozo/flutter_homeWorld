import 'package:flutter/material.dart';

class Rating extends StatelessWidget{
  double giMarginLeft;
  double giStars;
  double giFontSize;
  Rating (this.giStars, this.giMarginLeft, this.giFontSize);

  double liSize = 13;
  Widget getStar(double aiStar) {
    var lobIcon = Icons.star;
    if (aiStar == 0.5) {
      lobIcon = Icons.star_half;
    } else if (aiStar < 0.5) {
      lobIcon = Icons.star_border;
    }
    return Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        lobIcon,
        color: Color(0xFFf2C611),
        size: liSize,
      ),
    );
  }
  Widget getRating(double aiStars){
    var list = new List<Widget>();
    for (var n = 0 ; n<5 ; n++){
      list.add(getStar(aiStars));
      aiStars--;
    }
    return Container(
      margin: EdgeInsets.only(
        left: 4,
      ),
      child: Row(
        children: list,
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return getRating(giStars);
  }
}