<<<<<<< HEAD
import 'dart:async';

import 'package:bcsenglishgrammer/Dtls_page.dart';
import 'package:bcsenglishgrammer/home.dart';
=======
import 'package:bcsenglishgrammer/sub.dart';
>>>>>>> local
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // grammer data
  // https://www.grammarbd.com/en-grammar/word


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
<<<<<<< HEAD
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                  "assets/images/logo/main.gif",
                width: 250,
              )
            ],
          ),
=======
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(
               onPressed: (){
                 Navigator.push(
                     context,
                   MaterialPageRoute(
                       builder: (context)=>Sub())
                     );
               },
               child: Text("subcataagory")
           )
         ],
>>>>>>> local
        ),
      ),
    );
  }

  @override
  void initState() {
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>Home()
          )
      );
    });
  }
}
