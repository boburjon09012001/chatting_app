import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Flutter Chat UI",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primaryColor: Colors.blue,

      ),
      home: HomeScreen(),
    );
  }
}


