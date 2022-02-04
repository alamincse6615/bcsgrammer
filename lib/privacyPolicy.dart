import 'package:bcsenglishgrammer/about.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  _PrivacyPolicyState createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Privacy Policy"),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Privacy Policy",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                  "Md. Imran Hossan Shohel built the BCS English Grammar app as an Open Source app. This SERVICE is provided by Md. Imran Hossan Shohel at no cost and is intended for use as is.\nThis page is used to inform visitors regarding my policies with the collection, use, and disclosure of Personal Information if anyone decided to use my Service.If you choose to use my Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that I collect is used for providing and improving the Service. I will not use or share your information with anyone except as described in this Privacy Policy.\nThe terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at BCS English Grammar unless otherwise defined in this Privacy Policy.",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Information Collection and Use",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "For a better experience, while using our Service, I may require you to provide us with certain personally identifiable information. The information that I request will be retained on your device and is not collected by me in any way.\nThe app does use third-party services that may collect information used to identify you.\n\nLink to the privacy policy of third-party service providers used by the app\n\nGoogle Play Services",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Log Data",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "I want to inform you that whenever you use my Service, in a case of an error in the app I collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing my Service, the time and date of your use of the Service, and other statistics.",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Cookies",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Service Providers",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "I may employ third-party companies and individuals due to the following reasons:\n\nTo facilitate our Service;\n\nTo provide the Service on our behalf;\n\nTo perform Service-related services; or\n\nTo assist us in analyzing how our Service is used.\n\nI want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose. ",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Security",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "I value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and I cannot guarantee its absolute security. ",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Links to Other Sites",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by me. Therefore, I strongly advise you to review the Privacy Policy of these websites. I have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services. ",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Children’s Privacy",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "These Services do not address anyone under the age of 13. I do not knowingly collect personally identifiable information from children under 13 years of age. In the case I discover that a child under 13 has provided me with personal information, I immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact me so that I will be able to do the necessary actions. ",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Changes to This Privacy Policy",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "I may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. I will notify you of any changes by posting the new Privacy Policy on this page.\nThis policy is effective as of 2022-02-02",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 20,height: 1.5,fontWeight: FontWeight.w600),
                ),
              ),
              Text(
                "If you have any questions or suggestions about my Privacy Policy, do not hesitate to contact me at md.ShohelShikder2000@gmail.com. ",
                style: TextStyle(fontSize: 18,height: 1.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
