import 'package:flutter/material.dart';
import 'package:oyo_dummy/components/card_detail.dart';
class Homelist2 extends StatefulWidget {
  final String imagepath;
  Homelist2(this.imagepath);
  @override
  Homelist2State createState() => Homelist2State(this.imagepath);
}

class Homelist2State extends State<Homelist2> {
  final String imagepath;
  Homelist2State(this.imagepath);
  Icon ic;
  bool pressed = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ic = Icon(Icons.favorite_border,color: Colors.white,size: 33);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15,right: 15,bottom: 20,top: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Material(
          elevation: 10,
          shadowColor: Colors.grey,
          child: Container(
            height: 200,
            child: Stack(
               children: <Widget>[
                 Image.asset(imagepath,width: double.infinity,fit: BoxFit.fill,height: double.infinity,),
                 Positioned(
                     top: 82,

                     child: Detail()
                 ),
                 Positioned(
                   top:10,
                   right: 20,
                   child: IconButton(icon: ic,
                  onPressed: (){
                     if(pressed==false)
                       {
                         setState(() {
                           pressed = true;
                           ic = Icon(Icons.favorite,color: Colors.red,size: 33);
                         });
                       }
                     else
                       {
                         setState(() {
                           pressed = false;
                           ic = Icon(Icons.favorite_border,color: Colors.white,size: 33);                         });
                       }
                  }, ),
                 )

               ],
            ),
          ),
        ),
      ),
    );
  }
}
