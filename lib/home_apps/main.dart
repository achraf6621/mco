import 'package:flutter/material.dart';
import '../_onboarding/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Widget/navigation_theme.dart';
import '_screen_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized ();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seen = prefs.getBool('seen');
  Widget _screen;

  if(seen == null || seen == false ){
    _screen =  HomeScreen ();
  }else{
    _screen  = OnBoarding  ();
  }


  runApp(runapps(_screen));

}


class runapps extends StatelessWidget {
  final Widget _screen;
  runapps(this._screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: this._screen,
      theme: ThemeApp.appTheme,



    );
  }
}

