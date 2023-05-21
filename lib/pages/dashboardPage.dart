import 'package:flutter/material.dart';
import 'package:portfolio/const.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';



class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  Future<void> _launchURL(String url) async{
    final Uri uri = Uri(scheme: "https", host: url);
    if(!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )
    ) {}{
      throw "Canot Launch";
    }
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    const textStyle = TextStyle(
      color: Colors.white70,
      fontSize: 18,
    );
    return SafeArea(
      child: Scaffold(
        backgroundColor: firstColor,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
                  child: SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(secondColor),
                      ),
                      onPressed: () {
                        // Handle the button press to redirect to the PDF link
                      },
                      child: const Text('Resume'),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              // Wrap the ListView with an Expanded widget
              child: ListView(
                children: [
                  SizedBox(
                    height: 400,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "Hi! I am,",
                              style:
                                  TextStyle(fontSize: 30, color: secondColor),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              "Vishal Balani",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.white),
                            ),
                          ),
                          const Text(
                            "Flutter Developer",
                            style:
                                TextStyle(fontSize: 40, color: Colors.white70),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 60,
                            width: 200,
                            child: RawMaterialButton(
                              onPressed: () async{
                               //  const String linkedinUrl = 'https://www.linkedin.com/in/vishal-balani/'; // Replace with your LinkedIn profile URL
                               // if(await canLaunchUrl(linkedinUrl as Uri)){
                               //   await launchUrl(linkedinUrl as Uri);
                                _launchURL("https://www.linkedin.com/in/vishal-balani");

                              },

                              fillColor: Colors.transparent,
                              // Set the button color to transparent
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(color: secondColor),
                                // Customize the border color
                                borderRadius: BorderRadius.circular(
                                    8.0), // Customize the border radius
                              ),
                              child: const Text(
                                'Get In Touch',
                                style:
                                    TextStyle(color: secondColor, fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Engenering Student Who Exploring",
                        style: textStyle,
                      ),
                      Text(
                        "New Things In Development Part Of",
                        style: textStyle,
                      ),
                      Text(
                        "IT World",
                        style: textStyle,
                      ),
                      SizedBox(
                        height: 90,
                      )
                    ],
                  ),
                  const Column(
                    children: <Widget>[
                      Text(
                        "About Me",
                        style: TextStyle(
                            color: secondColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(
                            'assets/images/vishal1.jpg'), // Replace with your circular image
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: SizedBox(
                            width: 250,
                            child: Text(
                              "Currently, a student looking to join the workforce to gain real-world experience in the field of cyber security; 2yr+ hands-on Linux. Dedicated professional with proven performance in management, leadership and communication. Detail-oriented in problem-solving and planning.",
                              style: textStyle,
                            )),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Center(
                      child: Text(
                    "Skills",
                    style: TextStyle(
                        color: secondColor,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 20),
                    child: Wrap(
                        runSpacing: 6,
                      // spacing: 10,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/flutter.svg",
                            width: 30,
                            height: 30,
                            // color: Colors.white,
                          ),),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/dart.svg",
                            width: 30,
                            height: 30,
                            // color: Colors.white,
                          ),),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.java,
                              size: 30, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/android-studio.svg",
                            width: 30,
                            height: 30,
                            // color: Colors.white,
                          ),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container( child: const Icon(Icons.android, size: 30, color: Colors.white), )
                        ),

                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FaIcon(FontAwesomeIcons.github,
                              size: 30, color: Colors.white),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/firebase.svg",
                            width: 30,
                            height: 30,
                            // color: Colors.white,
                          ),),



                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/python.svg",
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/cpp.svg",
                            width: 30,
                            height: 30,
                            // color: Colors.white,
                          ),),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/css.svg",
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SvgPicture.asset(
                            "assets/icons/shell.svg",
                            width: 30,
                            height: 30,
                            color: Colors.white,
                          ),),

                      ],
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
