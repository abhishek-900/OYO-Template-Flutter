import 'package:flutter/material.dart';
import 'package:oyo_dummy/pages/Search_page.dart';
import 'package:oyo_dummy/pages/view_page.dart';
class HomeList1 extends StatelessWidget {
  final String heading;
  HomeList1(this.heading);
  List<String> images=["images/india.jpg","images/usa.jpg","images/canada.jpg","images/Nearby3.jpg","images/Nearby5.jpg","images/india.jpg","images/Nearby3.jpg"];
  List<String> country=["India","USA","Canada","France","Italy","Spain","Germany"];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(heading,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
        ),
        SizedBox(
          height: 10,
        ),
        Container(

          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: country.length,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 210,
                      width: 170,

                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 5),
                        child: Column(
                          children: <Widget>[
                            ClipRRect(
                              child: Material(
                                child: Container(
                                  height: 150,
                                  width: 150,
//                                  color: Colors.deepPurpleAccent,
                                  child: Image.asset(images[index],fit: BoxFit.fill,),

                                ),

                                elevation: 10,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(country[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)

                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
      ),

    );

  }
}
