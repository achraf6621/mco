import 'dart:ui';
import 'package:app_news/login/SignUpPage.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../home_apps/_screen_home.dart';


class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  List<PageModel> pages;
  ValueNotifier<int> _Idicator = ValueNotifier(0);

  void _addPages(){
    pages = List<PageModel>();
    pages.add(PageModel("assets/large1.jpg", " انضم الينا عبر تطبيق مولودية الوجدية ", "مرحبا", "assets/LOGO.png"));
    pages.add(PageModel("assets/large2.jpg", "كن   اكثر تقربا  من النادي بكل مكوناته ","welcome", "assets/LOGO.png"));
    pages.add(PageModel("assets/large3.jpg", "2-Text messaging, or texting, is the act of composing and sending electronic messages,", "hello","assets/LOGO.png" ));
    pages.add(PageModel("assets/large4.jpg", "3-or texting, is the act of composing and sending electronic messages,", "circle","assets/LOGO.png"  ));

  }

  @override
  Widget build(BuildContext context) {

    _addPages();
    return Stack(
      children: <Widget>[
        Scaffold(

          body: PageView.builder(
            itemBuilder: (context, index){
              return Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(
                          pages[index]._images,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        pages[index]._name,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        pages[index]._description,
                        style: TextStyle(fontSize: 18, color: Colors.white,
                        ),
                        textAlign: TextAlign.center,

                      ),
                    ],

                  ),



                ],

              );

            },
            itemCount: pages.length,
            onPageChanged: (index){
              _Idicator.value = index;
            },
          ),

        ),

        Transform.translate(
          offset: Offset(0, 175),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _drawerCircle()
              ],
            ),
          ),
        ),


        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 19,),
            child: SizedBox(
              height: 45,
              width: 360,
              child: RaisedButton(
                color: Colors.green.shade800,
                child: Text("ابدء",
                  style: TextStyle(fontSize: 20, color: Colors.white,),
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context){
                      _Sharedpreference();
                      return SignUpPage();
                    }),
                  );
                },

              ),
            ),
          ),
        ),

      ],


    );


  }
  Widget _drawerCircle(){
    return PageViewIndicator(
      pageIndexNotifier: _Idicator,
      length: pages.length,
      normalBuilder: (animationController, index) => Circle(
        size: 10.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size:12.0,

          color: Colors.green.shade800,
        ),
      ),
    );
  }



}
void _Sharedpreference() async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('seen', true);

}


class PageModel {
  String _images;
  String _name;
  String _description;
  String _image;



  PageModel(this._images, this._description, this._name, this._image );



  String get description => _description;

  String get name => _name;

  String get images => _images;
  String get image => _image;
}