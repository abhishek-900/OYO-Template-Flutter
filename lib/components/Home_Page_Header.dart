import 'package:flutter/material.dart';
import 'package:oyo_dummy/pages/Search_page.dart';
class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenheight=MediaQuery.of(context).size.height;
    var screenwidth=MediaQuery.of(context).size.width;
    print(screenheight.toString());
    print(screenwidth.toString());
    return Container(
      height:220,
      width: screenwidth,
      child: Stack(
        children: <Widget>[
          Image.asset("images/image1.jpg",width: double.infinity,fit: BoxFit.fill,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.5,vertical: 22),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(30),
              child: TextField(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Search()));

                },
                decoration: InputDecoration(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Icon(Icons.search,color: Color(0xff80bfff),size: 28,),
                  ),
                  hintText: "Where are you going?",
                  hintStyle: TextStyle(color: Color(0xffbfbfbf),fontWeight: FontWeight.bold),
                  contentPadding: EdgeInsets.symmetric(vertical: 10),
                  border:InputBorder.none,


                ),
              ),
            )
          ),
        /*  SizedBox(
            height: 2,
          ),*/
          Positioned(
            bottom: 0,
            top: 80,
            left: 110,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("OYO",style: TextStyle(color: Colors.white,fontSize: 80.7,fontWeight: FontWeight.bold),),
                Text("Largest Hotel chain",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold),),

              ],
            ),
          )


        ],
      ),
    );
  }
}
