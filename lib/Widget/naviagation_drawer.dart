
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '_nave_menu.dart';
import 'drawer/HeadLinenews.dart';
import '../home_apps/_screen_home.dart';
import 'feed_twitter.dart';

class DrawerAppbar extends StatefulWidget {

  @override
  _DrawerAppbarState createState() => _DrawerAppbarState();
}

class _DrawerAppbarState extends State<DrawerAppbar> {
  List<NaveMenuItem> naveMenu = [
    NaveMenuItem("Explore", () => HomeScreen()),
    NaveMenuItem("Whats News", () => HeadLineNews()),
    NaveMenuItem("Twitter Feed", () => FeedTwitter()),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left:10 ),
        child: ListView.builder(
            itemCount: naveMenu.length,
            itemBuilder: (context, position) {
              return ListTile(
                  title: Text( naveMenu[position].title,
                    style: TextStyle(fontSize: 18, color: Colors.black ),
                  ),
                  trailing:  Icon(Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return naveMenu[position].destination();
                    }),);
                  }
              );
            }
        ),
      ),



    );
  }

}
