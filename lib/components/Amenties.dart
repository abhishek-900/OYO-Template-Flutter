import 'package:flutter/material.dart';
class Amenities extends StatelessWidget {

  List<String> amen=["images/Group 10.png","images/Group 11.png","images/Group 12.png","images/Group 13.png"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 210,
        //color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Amenities",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10,
            ),
            Container(
            //color: Colors.yellow,
              height: 170,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: amen.length,
                  itemBuilder: (context,index){
                    return Container(
                      height: 180,
                      width: 130,
                      //color: Colors.green,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                          height: 100,
                          width: 100,
                         // color: Colors.deepPurpleAccent,
                          child: Image.asset(amen[index],fit: BoxFit.fill,),
                        ),
                      ),
                    );
                  }),
            )
          ],

        ),
      ),
    );
  }
}
