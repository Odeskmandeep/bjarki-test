import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'MyDrawer.dart';

class Grading extends StatelessWidget {
  var ListData;

  Grading({this.ListData});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
          title: Text("Grading",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          backgroundColor: context.theme.accentColor,
        ),
        body: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  top: 20,
                  height: 50,
                  child: Text(ListData,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,)
              ),
              Positioned(
                  right:0,
                  left: 0,
                  top: 200,
                  child: Text("Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,)
              ),
              Positioned(
                top: 250,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: new Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  child: new TextField(
                    textAlign: TextAlign.center,
                    decoration: new InputDecoration(
                      border: InputBorder.none,

                    ),
                  ),
                ).h(40).w(150).centered(),
              )
            ]
        ),
        drawer: MyDrawer()
    );
  }
}
