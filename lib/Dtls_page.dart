

import 'package:bcsenglishgrammer/about.dart';
import 'package:bcsenglishgrammer/home.dart';
import 'package:bcsenglishgrammer/model/subcategorydetailslist.dart';
import 'package:bcsenglishgrammer/privacyPolicy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Detlespage extends StatefulWidget {

  String subCategoryName;
  String subCategoryImage;
  List<SubCategoryDetailsList>? subCategoryDetailsList;


  Detlespage(this.subCategoryName, this.subCategoryImage, this.subCategoryDetailsList);



  @override
  _detlespageState createState() => _detlespageState();
}

class _detlespageState extends State<Detlespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("BCS English Grammar"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)=>Home()
                  )
              );
            },
            icon: Icon(Icons.home),
          ),
          PopupMenuButton(
            // add icon, by default "3 dot" icon
            // icon: Icon(Icons.book)
              itemBuilder: (context){
                return [
                  PopupMenuItem<int>(
                    value: 0,
                    child: Text("Abouts"),
                  ),

                  PopupMenuItem<int>(
                    value: 1,
                    child: Text("Privacy Policy"),
                  ),

                  PopupMenuItem<int>(
                    value: 2,
                    child: Text("Settings"),
                  ),
                ];
              },
              onSelected:(value){
                if(value == 0){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>About()
                      )
                  );
                }else if(value == 1){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)=>PrivacyPolicy()
                      )
                  );
                }else if(value == 2){
                  setState(() {
                    Fluttertoast.showToast(
                        msg: "Coming soon",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  });
                }
              }
          ),
        ],
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
                          widget.subCategoryName,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          share();
                        },
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 25.0,
                        ))
                  ],
                ),
              ),
            ),
            preferredSize: Size.fromHeight(46.0)),
      ),
      body: SafeArea(
        child:CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              pinned: false,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    widget.subCategoryImage,
                    fit: BoxFit.cover,
                  )),
            ),
            SliverList(
              // Use a delegate to build items as they're scrolled on screen.
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.subCategoryDetailsList![index].topicName.toString(),
                              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, bottom: 5.0),
                              child: Text(
                                widget.subCategoryDetailsList![index].topicDetails.toString(),
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black54,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                    childCount: widget.subCategoryDetailsList!.length,
                  ),
            ),
          ],
          ),

      ),
    );
  }

  Future<void> share() async {
    await FlutterShare.share(
        title: 'BCS English Grammar',
        text: 'BCS English Grammar',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.nintytwo.bcsenglishgrammer',
        chooserTitle: 'BCS English Grammar');
  }

}
