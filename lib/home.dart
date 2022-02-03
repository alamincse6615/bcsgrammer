import 'dart:convert';

import 'package:bcsenglishgrammer/about.dart';
import 'package:bcsenglishgrammer/model/grammermodel.dart';
import 'package:bcsenglishgrammer/privacyPolicy.dart';
import 'package:bcsenglishgrammer/sub.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<String> categoryImageList = [
    "assets/images/category/basic.png",
    "assets/images/category/intermediate.png",
    "assets/images/category/advanced.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.lightBlueAccent,

          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        backgroundColor: Colors.lightBlueAccent,
        title: Center(child: Text("B.C.S English Grammar")),
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
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/images.png"),
              fit: BoxFit.cover,
            ),
        ),
        child: Container(
          color: Colors.black38,
          /*child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                      "Waste no more time arguing about what a good person should be. Be one   ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20,color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.47,
                      // height: MediaQuery.of(context).size.height * .80,
                      child: Column(

                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sub()));
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.greenAccent,
                              elevation: 1,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                                child: Column(
                                  children: [
                                    Image.asset(
                                        "assets/images/category/basic.png",
                                      width: MediaQuery.of(context).size.width*0.4,
                                      height: 150,
                                    ),
                                    Text(
                                      "Basic",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black54
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.greenAccent,
                            elevation: 2,
                            child: Container(
                              height: 200,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/category/intermediate.png",
                                    width: MediaQuery.of(context).size.width*0.4,
                                    height: 150,
                                  ),
                                  Text(
                                    "Intermediate",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.47,
                      // height: MediaQuery.of(context).size.height*.80,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=>Detlespage()
                                  )
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.greenAccent,
                              elevation: 2,
                              child: Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/category/advanced.png",
                                      width: MediaQuery.of(context).size.width*0.5,
                                      height: 150,
                                    ),
                                    Text(
                                      "Advanced",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        color: Colors.black54
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context)=>Detlespage()
                                  )
                              );
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: Colors.greenAccent,
                              elevation: 2,
                              child: Container(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/category/advanced.png",
                                      width: MediaQuery.of(context).size.width*0.5,
                                      height: 150,
                                    ),
                                    Text(
                                      "Advanced",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                        color: Colors.black54
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),*/
          child: FutureBuilder(
            future: JsonRead(),
            builder: (context,info){
              var _list = info.data as List<GrammarModel>;

              return GridView.builder(
                  itemCount: _list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context,index){
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Sub(
                          _list[index].categoryName.toString(),
                          _list[index].subCategoryList,
                        )));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        color: Colors.greenAccent,
                        elevation: 1,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Column(
                            children: [
                              Image.asset(
                                categoryImageList[index],
                                width: MediaQuery.of(context).size.width*0.4,
                                height: 150,
                              ),
                              Text(
                                _list[index].categoryName.toString(),
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black54
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }
              );
            },
          )
        ),
      ),
    );
  }


  Future<List<GrammarModel>>JsonRead()async{
    final jsonData = await rootBundle.loadString("assets/jsonfile/grammer.json");
    final jsonList = json.decode(jsonData) as List<dynamic>;
    return jsonList.map((e) => GrammarModel.fromJson(e)).toList();
  }


}
