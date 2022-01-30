import 'package:bcsenglishgrammer/Dtls_page.dart';
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
        child: ListView.builder(itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Detlespage()));
            },
            child: Card(
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                      child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/images/images.png",fit: BoxFit.fill,))
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black26,
                    ),

                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      child: Text(
                        "Sub Category Name",
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                        )
                        ,)
                  )

                ],
              ),
            ),
          );
        })
      ),
    );
  }
}
