import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'Grading.dart';
import 'MyDrawer.dart';

class Settings extends StatefulWidget {
  const Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
var listData = ["Haddock","Redfish"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar:AppBar(
        title: Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
    backgroundColor: context.theme.accentColor,
    ),
        body: Stack(
            children: [
              Positioned(
                  left: 0,
                  right: 0,
                  top: 20,
                  height: 50,
                  child: Text("Pick Your Fish",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,)
              ),
              Positioned(
                  right: 20,
                  top: 90,
                  width: 150,
                  child: Text("Total Qty",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),textAlign:TextAlign.center ,)
              ),
             Positioned(
               top: 130,
               left: 0,
               right: 0,
               height: 500,
               child:Container(
                 child:ListView.builder(
                itemCount: listData?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(
                        title: Text(listData[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        leading:SizedBox(height: 80,width: 60,).backgroundColor(Colors.black12).cornerRadius(5),
                        trailing:Container(
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
                        ).h(40).w(150),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            //open viewPDF page on click
                            return Grading(ListData:listData[index].toString());
                          }));
                        },
                      ).h(80);
                },
              ),
               )
            )
            ]
        ),
        drawer: MyDrawer()
    );
  }
}


