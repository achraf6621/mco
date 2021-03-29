import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class WhatsNews extends StatefulWidget {
  @override
  _WhatsNewsState createState() => _WhatsNewsState();
}

class _WhatsNewsState extends State<WhatsNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // hadi bach n9ader    ndir   page twila scrollview
      child: Column(
        // column psk   kan7taj hna widget fog widget

        crossAxisAlignment: CrossAxisAlignment.start,
             // just   bach  net7akem fel blasa   dyal l widget
        children: <Widget>[
          _drawBox(),
          _drawTitle("أهم الأخبار"),
          Column(
            children: <Widget>[
              _drawCard(),
              _drawcard(),
              _drawCard(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              _drawTitle("RECENT UPDATE"),
              _drawResentUpdate(Colors.green.shade800),
              _drawResentUpdate(Colors.amber),
              _drawResentUpdate(Colors.green),
            ],


          )
        ],
      ),


    );
  }
  Widget _drawBox(){
    return Container(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height * 0.25,

      decoration: BoxDecoration(
        image: DecorationImage(
          image: ExactAssetImage("assets/large5.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 48, right: 48),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Text example " ,
                style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.w800),
                textAlign: TextAlign.center ,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 48, left: 48),
                child: Text("text example ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),

            ],


          ),
        ),
      ),
    );
  }
  Widget _drawTitle(String title){

    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 15),
      child: Column(
        children: <Widget>[
          Text( title,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade800, fontWeight: FontWeight.w800),
          ),
        ],
      ),
    );


  }

  Widget _drawCard(){

    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Image(
                  image: ExactAssetImage("assets/whatsnews.jpg"),
                  fit: BoxFit.cover,
                  width: 124,
                  height: 124,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(left: 14,  top: 0.5),
                        child: Text(" text exemple ", maxLines: 2,
                          style: TextStyle(fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w800, ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("ADAME HiLTEY"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon( Icons.timer),
                                Text("15 min"),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );

  }
  Widget _drawcard(){

    return Card(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Image(
                  image: ExactAssetImage("assets/whatsnews.jpg"),
                  fit: BoxFit.cover,
                  width: 124,
                  height: 124,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(left: 14,  top: 0.5),
                        child: Text("achraf ", maxLines: 2,
                          style: TextStyle(fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w800, ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 45),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("achraf hassani "),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon( Icons.timer),
                                Text("15 min"),
                              ],
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );

  }

  Widget _drawResentUpdate(Color color){

    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Image(
            image: ExactAssetImage("assets/LOGO.png",
            ),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 240,
          ),
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: Text("SPORTS",
                  style: TextStyle(fontSize: 15, color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(8),
              ),

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("text example",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.timer),
                SizedBox(
                  width: 5,
                  height: 5,
                ),
                Text("15 min"),

              ],
            ),
          )




        ],

      ),
    );
  }

}