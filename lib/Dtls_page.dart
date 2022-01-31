import 'package:flutter/cupertino.dart';
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
        backgroundColor: Colors.lightBlueAccent,
        title: Text(" Details"),
        bottom: PreferredSize(
            child: Container(
              height: 50,
              color: Colors.lightBlueAccent,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.library_books,
                            color: Colors.white,
                            size: 25.0,
                          ),
                        ),
                        Text(
                          "Alphabets",
                          style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: (){

                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 25.0,
                        )
                    )
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(46.0)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network("https://cheaptraining.com/wp-content/uploads/2020/10/AdobeStock_103437308-2.jpeg",
              height: 220,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "What is Lorem Ipsum?",
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 5.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                      style: TextStyle(fontSize: 20,color: Colors.black54,),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "What is Lorem Ipsum?",
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 5.0),
                    child: Text(
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "What is Lorem Ipsum?",
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,bottom: 5.0),
                    child: Text(
                      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}