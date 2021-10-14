import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_figmademo/Resources/MyTheme.dart';
import 'Home.dart';
import 'Settings.dart';

class MyDrawer extends StatefulWidget {


  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color:MyTheme.appColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding:EdgeInsets.only(top: 40),
            ),
            ListTile(
              trailing:IconButton(
               icon: Icon(
                 CupertinoIcons.xmark,
                 color: Colors.white,
               ),
                onPressed:(){
                  Navigator.of(context).pop();
                },
              ) ,
              title: Text(
                "User Email",
                style: TextStyle(
                    color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: 100),
            ),
            ListTile(
              title: Text(
                "Offload Manager",
                style: TextStyle(
                    color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                ),
              ),onTap:(){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                },
            ),
            Padding(
              padding:EdgeInsets.only(top: 40),
            ),
            ListTile(
              title: Text(
                "Settings",
                style: TextStyle(
                    color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold
                ),
              ), onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
            },
            ),

          ],
        ),
      )
      ,
    );
  }
}
