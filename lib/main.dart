
//flutter run --no-sound-null-safety


import 'package:flutter/material.dart';
import 'package:shop_app_ui/constants.dart';
import 'home.dart';

void main(){
  runApp( myApp() );
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop App",
      theme: ThemeData(
          textTheme: Theme.of(context).textTheme.apply(bodyColor : kTextColor)
      ),
      home: HomePage(),
    );
  }
}



