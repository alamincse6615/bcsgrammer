import 'package:bcsenglishgrammer/Dtls_page.dart';
import 'package:bcsenglishgrammer/model/subcategorylist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: widget.subCategoryList!.length,
            itemBuilder: (context,index){
          return InkWell(
            onTap: (){
              print(widget.subCategoryList![index].subCategoryDetailsList);
             /* Navigator.push(context, MaterialPageRoute(builder: (context)=>Detlespage(
                  widget.subCategoryList![index].subCategoryName.toString(),

              )));*/
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
