import 'package:flutter/material.dart';

class Populair extends StatefulWidget {
  @override
  _PopulairState createState() => _PopulairState();
}

class _PopulairState extends State<Populair> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position){
          return Card(
            child: _drawCardLisView(),
          );

        }
    );
  }

  Widget _drawCardLisView(){

    return Column(
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
                      child: Text("why elon musk sell all homes in california", maxLines: 2,
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
    );

  }


}