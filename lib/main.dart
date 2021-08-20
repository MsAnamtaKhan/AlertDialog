import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assignment 3',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title:'Life Savers'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
showAlertDialog(BuildContext context)
{
  Widget okButton=ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text('Ok'));
  AlertDialog response=AlertDialog(title: Text('Send Blood Request'),
  content: Text('Your Blood Request has been Sent Successfully'),
  actions: [okButton],);
  showDialog(context: context, builder: (BuildContext context){
    return response;
  }
  );
}
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
       centerTitle:true,  title: Padding(padding:EdgeInsets.fromLTRB(0,40,0,40),child:Text(widget.title,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily:'Robotics'),)),
      ),
      body:Container( 
        color: Colors.redAccent,
        child:Center(
        child:Column(
        children:[
          Padding(
            padding: EdgeInsets.fromLTRB(0,60,0,0),
          child:CircleAvatar(
           backgroundImage: AssetImage('assets/avatar.jpg'),
            maxRadius: 100,
          ),
        
         ),
          Container(
           
          width:500,
          height:280,
          padding:new EdgeInsets.fromLTRB(80,20,80,0),
          child:Card(
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(15.0),
            ),
       //    color:Colors.red,
            elevation:20,
             color:Colors.yellow,
            shadowColor: Colors.blue,
            child:Padding(
              padding: EdgeInsets.fromLTRB(0,30,0,0),
            child:Column(
              mainAxisSize:MainAxisSize.min,
              children:[
                
                 Padding(
                   padding: EdgeInsets.fromLTRB(20,0,20,20), 
                   child:TextField(decoration: InputDecoration(
                    hintText: "Enter your Email",
                    labelText: "Enter Mail",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.email,size: 30.0,),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.red,width: 2)),
                      focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.red,width: 2),)
                  ), 
                  )),

                 Padding(
                   padding: EdgeInsets.fromLTRB(20,0,20,20), 
                   child:TextField(decoration: InputDecoration(
                    hintText: "Enter Your Blood Group",
                    labelText: "Blood Group",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.assignment,size: 30.0,),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.red,width: 2)),
                      focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.red,width: 2),)
                  )
                  )),

               Row(children: [
                 Padding(
                 padding: EdgeInsets.fromLTRB(110,0,0,20),
                 child: ElevatedButton(onPressed: (){
                 showAlertDialog(context);}, 
                 child: Text('Send',style: TextStyle(fontSize: 20),),
                 style: ElevatedButton.styleFrom(primary:Colors.red,
                 padding: EdgeInsets.symmetric(horizontal:30,vertical:20),
                 shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20.0)))))
               )])
              ]
            ))
          )

        )])
      ),)

    );
  }
}
