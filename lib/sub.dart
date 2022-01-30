import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Sub extends StatefulWidget {
  const Sub({Key? key}) : super(key: key);

  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://staticg.sportskeeda.com/editor/2021/09/e317c-16305104087993-800.jpg")
                      )
                  ),
                  child: Container(
                    color: Colors.black54,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            "khan",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
