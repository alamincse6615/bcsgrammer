import 'package:bcsenglishgrammer/privacyPolicy.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.lightBlueAccent,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          backgroundColor: Colors.lightBlueAccent,
          title: Text("Abouts"),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(

            children: [
              Card(
                elevation: 3,
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "This app will help you to learn English Grammar, eg. Alphabet, Sentence, Articles এবং Articles এর ব্যবহার, Tense, Preposition, Appropriate Preposition, Completing Sentence-এর নিয়মাবলী, Right form of verbs, Transformation of Sentence, Voice Change, Narration, Degree and Change of Degrees-এর নিয়মাবলী, Pronoun Reference, Punctuation, Sentence Connectors, Uses of Some Special Words or Phrases, English Language Lesson- Modifiers, Synonyms-Antonyms and Tag Questions, How to Question (কিভাবে প্রশ্ন করতে হয়), Proverb, Idioms ও Phrases, ইংরেজিতে কথা বলার ফর্মুলা, স্পোকেন ইংলিশ, English Vocabulary Word Lists, Conversation also.\n\nSo this ইংরেজি গ্রামার all english grammar rules in bangla or B.C.S English Grammar Book is not simply an normal application, this is more than an application which is collection of your further needs.\n\nআমাদের এই অ্যাপটি ইংরেজি গ্রামার  B.C.S  English Grammar Learning In Bangla যা ইংরেজি গ্রামার শিক্ষা সহজ করে দেবে। বাজারে অনেক ইংরেজি গ্রামার বই আছে যা বহন করা কষ্টকর, কিন্তু আমাদের এই অ্যাপটি অত্যন্ত সহজে এবং নিজ পকেটে বহন করতে পারবেন। সহজে ইংরেজি গ্রামার শিখতে এটি সহায়তা করবে, অর্থাৎ এটি একটি সহজ ইংরেজি গ্রামার, এতে পাবেন বাংলা থেকে ইংরেজি বাক্য অনুবাদ, বাংলা ইংরেজি অনুবাদ, Bengali English Translator, বাংলা - ইংরেজি - বাংলা অনুবাদ, বাংলা থেকে ইংরেজী অনুবাদ, ইংরেজি থেকে বাংলা অনুবাদ, বাংলা টু ইংরেজি অনুবাদ যা ইংরেজি গ্রামার শেখার সহজ উপায় English Grammar, এতে আছে আরও স্পোকেন বাংলা টু ইংলিশ ডায়লগ। ইংলিশ গ্রামার সহজ করার প্রয়াস।\n\nআপনাদের ভালো লাগলে ৫ স্টার দিয়ে রিভিউ করতে ভুলবেন না কিন্তু!",
                    style: TextStyle(fontSize: 17),
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
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
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: (){
                                            launchFacebook("fb://profile/100006006780680", "https://www.facebook.com/shohel.shikder.16/");
                                          },
                                          icon: CircleAvatar(
                                            child: FaIcon(
                                                FontAwesomeIcons.facebook,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                              radius: 50.0,
                                            backgroundColor: Colors.lightBlueAccent,
                                          ),
                                        iconSize: 35.0,
                                      ),
                                      IconButton(
                                          onPressed: (){
                                            _launchEmail("md.shohelshikder27@gmail.com");
                                          },
                                          icon: CircleAvatar(
                                            child: FaIcon(
                                                FontAwesomeIcons.envelope,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                            radius: 50.0,
                                            backgroundColor: Colors.lightBlueAccent,
                                          ),
                                        iconSize: 35.0,
                                      ),
                                      IconButton(
                                        onPressed: (){
                                          linkedinIn("https://www.linkedin.com/in/md-shohel-shikder-b61800173/");
                                        },
                                        icon: CircleAvatar(
                                          child: FaIcon(
                                            FontAwesomeIcons.linkedinIn,
                                            color: Colors.white,
                                            size: 20.0,
                                          ),
                                          radius: 50.0,
                                          backgroundColor: Colors.lightBlueAccent,
                                        ),
                                        iconSize: 35.0,
                                      ),
                                      IconButton(
                                        onPressed: (){
                                          _gitHub("https://github.com/shohelshikder");
                                        },
                                        icon: CircleAvatar(
                                          child: FaIcon(
                                            FontAwesomeIcons.github,
                                            color: Colors.white,
                                            size: 20.0,
                                          ),
                                          radius: 50.0,
                                          backgroundColor: Colors.lightBlueAccent,
                                        ),
                                        iconSize: 35.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
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
                                "assets/images/profile/musa.jpg",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(
                              children: [
                                Text(
                                    "Musa Hasan Surjo",
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Mobile App Developer (Flutter)",
                                  style: TextStyle(fontSize: 17,color: Colors.black54),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                          onPressed: (){
                                            launchFacebook("fb://profile/100008950594528", "https://www.facebook.com/profile.php?id=100008950594528");
                                          },
                                          icon: CircleAvatar(
                                            child: FaIcon(
                                                FontAwesomeIcons.facebook,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                              radius: 50.0,
                                            backgroundColor: Colors.lightBlueAccent,
                                          ),
                                        iconSize: 35.0,
                                      ),
                                      IconButton(
                                          onPressed: (){
                                            _launchEmail("md.shohelshikder27@gmail.com");
                                          },
                                          icon: CircleAvatar(
                                            child: FaIcon(
                                                FontAwesomeIcons.envelope,
                                              color: Colors.white,
                                              size: 20.0,
                                            ),
                                            radius: 50.0,
                                            backgroundColor: Colors.lightBlueAccent,
                                          ),
                                        iconSize: 35.0,
                                      ),
                                      IconButton(
                                        onPressed: (){
                                          linkedinIn("https://www.linkedin.com/in/md-shohel-shikder-b61800173/");
                                        },
                                        icon: CircleAvatar(
                                          child: FaIcon(
                                            FontAwesomeIcons.linkedinIn,
                                            color: Colors.white,
                                            size: 20.0,
                                          ),
                                          radius: 50.0,
                                          backgroundColor: Colors.lightBlueAccent,
                                        ),
                                        iconSize: 35.0,
                                      ),
                                      IconButton(
                                        onPressed: (){
                                          _gitHub("https://github.com/shohelshikder");
                                        },
                                        icon: CircleAvatar(
                                          child: FaIcon(
                                            FontAwesomeIcons.github,
                                            color: Colors.white,
                                            size: 20.0,
                                          ),
                                          radius: 50.0,
                                          backgroundColor: Colors.lightBlueAccent,
                                        ),
                                        iconSize: 35.0,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
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

  _gitHub(String gitUrl) async {
    await launch("$gitUrl");
    // if (await canLaunch("mailto:$email")) {
    //   await launch("mailto:$email");
    // } else {
    //   throw 'Could not launch';
    // }
  }

  linkedinIn(String Url) async {
    await launch("$Url");
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
