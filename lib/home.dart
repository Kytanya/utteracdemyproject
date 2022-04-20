import 'package:flutter/material.dart';

class ItsHome extends StatefulWidget {
  @override
  _ItsHomeState createState() => _ItsHomeState();
}

class _ItsHomeState extends State<ItsHome> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Container(
              width: 100,
              height: 100,
              child: Image.asset("assets/Nintendo.png"),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              List.generate(
                5,
                (int i) {
                  return _listItem(i);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return Container(
      height: 250,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            height: 150,
            width: 200,
            child: Image.asset(
              "assets/$i.jpg",
            ),
          ),
          Text("Available Game"),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.favorite_border),
                Text(
                  "Direct Download Link!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Icon(Icons.shopping_cart),
              ],
            ),
          )
        ],
      ),
    );
  }
}
