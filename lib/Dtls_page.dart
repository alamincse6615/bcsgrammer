import 'package:flutter/material.dart';
class Detlespage extends StatefulWidget {
  const Detlespage({Key? key}) : super(key: key);

  @override
  _detlespageState createState() => _detlespageState();
}

class _detlespageState extends State<Detlespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Details"),
      ),
      body: Column(
        children: [
          Image.network("https://cheaptraining.com/wp-content/uploads/2020/10/AdobeStock_103437308-2.jpeg",
            height:
            MediaQuery.of(context).size.height/3,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "hi"
          )
        ],
      ),
    );
  }
}