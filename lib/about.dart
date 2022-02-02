import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Abouts"),
        ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(

          children: [
            Card(
              elevation: 3,
              child:Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                  style: TextStyle(fontSize: 17),
                ),
              )
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40.0,
                        backgroundImage: AssetImage(
                            "assets/images/profile/shohel.jpg",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Text(
                                "Md. Imran Hossan Shohel",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Mobile App Developer (Flutter)",
                              style: TextStyle(fontSize: 17,color: Colors.black54),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: (){
                                      launchFacebook("fb://profile/100006006780680", "https://www.facebook.com/shohel.shikder.16/");
                                    },
                                    icon: Icon(
                                      Icons.facebook
                                    ),
                                  color: Colors.blue,
                                ),
                                IconButton(
                                    onPressed: (){
                                      _launchEmail("md.shohelshikder27@gmail.com");
                                    },
                                    icon: Icon(
                                      Icons.email
                                    ),
                                  color: Colors.blue,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _launchEmail(String email) async {
    await launch("mailto:$email");
    // if (await canLaunch("mailto:$email")) {
    //   await launch("mailto:$email");
    // } else {
    //   throw 'Could not launch';
    // }
  }


  Future<void> launchFacebook(String fbUrl,String fbWebUrl)
  async {
    try {
      bool launched = await launch(fbUrl, forceSafariVC: false);
      print("Launched Native app $launched");

      if (!launched) {
        await launch(fbWebUrl, forceSafariVC: false);
        print("Launched browser $launched");
      }
    } catch (e) {
      await launch(fbWebUrl, forceSafariVC: false);
      print("Inside catch");
    }
  }
}
