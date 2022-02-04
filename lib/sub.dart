import 'package:bcsenglishgrammer/Dtls_page.dart';
import 'package:bcsenglishgrammer/about.dart';
import 'package:bcsenglishgrammer/model/subcategorylist.dart';
import 'package:bcsenglishgrammer/privacyPolicy.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Sub extends StatefulWidget {
  String categoryName;
  List<SubCategoryList>? subCategoryList;
  Sub(this.categoryName, this.subCategoryList);


  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(widget.categoryName),
        actions: [
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
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: widget.subCategoryList!.length,
            itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              print(widget.subCategoryList![index].subCategoryDetailsList);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Detlespage(
                  widget.subCategoryList![index].subCategoryName.toString(),
                  widget.subCategoryList![index].subCategoryImage.toString(),
                  widget.subCategoryList![index].subCategoryDetailsList,
              )));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                      child: ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("assets/images/images.png",fit: BoxFit.fill,))
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black38,
                    ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                        widget.subCategoryList![index].subCategoryName.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold
                          )
                          ,),
                      )
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
