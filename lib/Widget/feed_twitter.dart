
import 'package:flutter/material.dart';


import 'naviagation_drawer.dart';


class FeedTwitter extends StatefulWidget {
  @override
  _FeedTwitterState createState() => _FeedTwitterState();
}

class _FeedTwitterState extends State<FeedTwitter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text(" تعليقات فيسبوك  "),
        centerTitle: false,
        actions:<Widget> [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){}),
        ],
      ),
      drawer: DrawerAppbar(),
      body: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, position) {
            return Card(
              child: Column(
                children:<Widget> [
                  _Author(),
                  _writer(),
                  _Shared(),
                ],
              ),
            );

          }),
    );
  }


  Widget _Author(){
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: ExactAssetImage("assets/LOGO.png"),
            radius: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("molodia", style: TextStyle(fontSize: 14),),
                  SizedBox(
                    width: 8,
                  ),
                  Text("@mcoujda", style: TextStyle(fontSize: 14),),
                ],
              ),
              SizedBox(
                height: 6,

              ),
              Text("FRI 12, FEB 2021, 12:34",
                style: TextStyle(fontSize: 10, )
                ,),
            ],
          ),
        )
      ],
    );
  }
  Widget _writer(){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text("example text "),
    );
  }
  Widget _Shared(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        children: [
          Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.repeat, color: Colors.green.shade800,), onPressed:
                  ( ){}
              ),
              Text("30"),
            ],
          ),
          Row(
            children: [
              FlatButton(onPressed: (){},
                child: Text("مشاركة", style: TextStyle(color: Colors.green.shade800), ),),
              FlatButton(onPressed: (){}, child: Text("دخول " , style: TextStyle(color: Colors.green.shade800,),),),
            ],
          ),
        ],
      ),
    );
  }

}