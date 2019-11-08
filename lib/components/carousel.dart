import 'package:flutter/material.dart';


import 'package:carousel_pro/carousel_pro.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  List<String> img = [
    "images/pic1.jpg",
    "images/pic2.jpg",
    "images/pic3.jpg",
    "images/pic4.jpg",
    "images/pic5.jpg",
    "images/pic6.jpg"
  ];
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Carousel(
        overlayShadow: false,
        dotBgColor: Colors.transparent,
        boxFit: BoxFit.cover,
        images: [
          Image.asset("images/pic1.jpg",width: double.infinity,fit: BoxFit.fill,),
          Image.asset("images/pic2.jpg",width: double.infinity,fit: BoxFit.fill,),
          Image.asset("images/pic3.jpg",width: double.infinity,fit: BoxFit.fill,),
          Image.asset("images/pic4.jpg",width: double.infinity,fit: BoxFit.fill,),
          Image.asset("images/pic5.jpg",width: double.infinity,fit: BoxFit.fill,),
          Image.asset("images/pic6.jpg",width: double.infinity,fit: BoxFit.fill,),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),


      ),
    );
  }
}
