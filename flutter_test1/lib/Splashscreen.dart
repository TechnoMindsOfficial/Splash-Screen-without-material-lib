import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertest1/configuration.dart';

import 'main.dart';


void main(){

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.transparent,
      statusBarBrightness: Brightness.dark

  ));
  runApp(MaterialApp(home:   Splashscreen(),
    debugShowCheckedModeBanner: false,));
}

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState(){
    return _SplashscreenState();}
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();

    loadData();
  }
  Widget build(BuildContext context) {

    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/login.png")
        )
      ),

      child: Stack(

        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(

            ),

          )
        ],
      ),

     );
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 4), onDoneLoading);
  }

   onDoneLoading() async{
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> Homepage()));
   }
}
