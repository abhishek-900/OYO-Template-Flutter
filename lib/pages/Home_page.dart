import 'package:flutter/material.dart';
import 'package:oyo_dummy/components/Home_Page_Header.dart';
import 'package:oyo_dummy/components/Home_listView2.dart';
import 'package:oyo_dummy/components/home_listView1.dart';
import 'package:oyo_dummy/pages/view_page.dart';
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>  with AutomaticKeepAliveClientMixin<Homepage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Header(),
          SizedBox(
            height: 10,
          ),

          HomeList1("Popular"),
          HomeList1("Trending"),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text("Nearby",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          ),
          InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
          },
              child: Homelist2("images/pic1.jpg")
          ),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
              },
              child: Homelist2("images/pic2.jpg")),

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
              },
              child: Homelist2("images/pic3.jpg")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
              },
              child: Homelist2("images/pic4.jpg")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
              },
              child: Homelist2("images/pic5.jpg")),
          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewPage()));
              },
              child: Homelist2("images/pic6.jpg")),


        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

