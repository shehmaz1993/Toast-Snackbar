import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
     home: MyApp()
      ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override int count=0;
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
         floatingActionButton:FloatingActionButton(
           child: Icon(Icons.account_box),
            onPressed: () {
             setState(() {
                  count++;

                 } );} ),
           body:ListView(
             children: <Widget>[
               Text(
                 "Count: $count ",
                 style: TextStyle(color: Colors.blue,fontSize: 20,fontStyle: FontStyle.italic),
                 textAlign:TextAlign.center ,
               ),
               RaisedButton(
                 elevation: 10,
                 child: Text("Raised Button"),
                 onPressed: () {
                   setState(() {
                     count++;
                   });

                 }
               ),
               SizedBox(

                 child: FlatButton(
                   child:Image.asset("asset/number_5.png",height: 40,width: 50,),
                   onPressed:(){
                     setState(() {
                       count++;
                     });
                   } ,
                 )
               ),
               IconButton(
                 icon:Icon(Icons.accessibility_new) ,
                 onPressed: (){
                   setState(() {
                     count++;
                   });
                 },
               )


             ],
           )
      ,
    );
  }
}

