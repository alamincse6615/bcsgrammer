

import 'package:bcsenglishgrammer/model/subcategorydetailslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        title: Text(widget.subCategoryName),
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
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
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
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.26,
                child: Image.asset(
                  widget.subCategoryImage,
                  width: MediaQuery.of(context).size.width,
                  height: 240,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.subCategoryDetailsList!.length,
                    itemBuilder: (context,index){
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
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
