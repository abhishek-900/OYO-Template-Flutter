import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search>  {
  List<String> images = [
    "images/delhi.jpg",
    "images/kerala.jpg",
    "images/mumba.jpg",
    "images/bangalore.jpg",
    "images/d1.jpg",
    "images/k1.jpeg",
    "images/m1.jpg",
    "images/b1.jpg"
  ];

  List<String> place = [
    "Delhi",
    "Kerala",
    "Mumbai",
    "Bangalore",
    "Delhi",
    "Kerala",
    "Mumbai",
    "Bangalore"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 230,
                ),
                IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 40,
                  ),
                  onPressed:()=>Navigator.pop(context),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Search",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  )),
              SizedBox(
                width: 50,
              ),
            ],
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.5, vertical: 28),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(30),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Icon(
                        Icons.search,
                        color: Colors.lightBlueAccent,
                        size: 28,
                      ),
                    ),
                    hintText: "Where are you going?",
                    hintStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.symmetric(vertical: 17),
                    border: InputBorder.none,
                  ),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Last searches",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 70,
              ),
              Text(
                "clear all",
                style: TextStyle(color: Colors.blue, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 400,
            child: GridView.builder(
                itemCount: place.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.0,
                  mainAxisSpacing: 2,
                  childAspectRatio: 0.8,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchGrid()));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Container(
                                    height: 150,
                                    width: 150,
                                    //color: Colors.yellow,
                                    child: Image.asset(
                                      images[index],
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                place[index],
                                style: TextStyle(fontSize: 22),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }


}
