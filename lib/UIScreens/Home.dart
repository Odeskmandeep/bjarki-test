import 'package:flutter/material.dart';
import 'package:flutter_figmademo/UIScreens/MyDrawer.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    //  final dummyList = List.generate(50, (index) => HomeModel.items[0]);
    return Scaffold(
        appBar:AppBar(
          title: Text("Offload Manager",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          backgroundColor: context.theme.accentColor,
        ),
        body: Stack(
            children: [
            Positioned(
              left: 40,
              top: 100,
              width: 160,
              child: Text("Boat Number:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
              Positioned(
                left: 220,
                top: 100,
                child: Text("101",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Positioned(
                left: 40,
                top: 150,
                width: 160,
                child: Text("Boat Name:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              Positioned(
                left: 220,
                top: 150,
                child: Text("Blue Ship 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              )
            ]
        ),
        drawer: MyDrawer()
    );
  }
}
