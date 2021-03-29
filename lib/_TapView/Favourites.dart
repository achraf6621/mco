import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorslist = [
    Colors.red,
    Colors.amber,
    Colors.brown,
    Colors.blue,
    Colors.green,
    Colors.pinkAccent,

  ];

  Random random = Random();

  Color RandomColors(){
    return colorslist[random.nextInt(colorslist.length)];
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position) {
          return Card(
            child: Column(
              children: [
                _drawAuthor(),
                _drawContainer(),
              ],
            ),

          );
        }
    );
  }
  Widget _drawAuthor(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: ExactAssetImage("assets/LOGO.png",
                ),
                radius: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 7,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("@MCOUJDA"),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget> [
                      Text("15 min."),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Life Style",
                        style: TextStyle(fontSize: 14, color: RandomColors()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],

        ),

        IconButton(icon: Icon(Icons.bookmark_border), onPressed: (){},
        ),
      ],
    );
  }

  Widget _drawContainer(){
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 10,),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage("assets/whatsnews.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            width: 124,
            height: 124,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Claims in Impeachment Trial",style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w800),),
                SizedBox(
                  height: 8,
                ),
                Text("text ex 1,",
                  style: TextStyle(fontSize: 14, color: Colors.grey , height: 1.25),
                ),
              ],
            ),
          ),
        ),
      ],
    );

  }

}