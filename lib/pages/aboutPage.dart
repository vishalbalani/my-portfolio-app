import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  String? hoverLink;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                "Links",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
                height: 20,
                indent: 16,
                endIndent: 16,
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LinkCard(
                      icon: FontAwesomeIcons.linkedin,
                      title: "LinkedIn",
                      url: "https://www.linkedin.com/",
                      isHovered: hoverLink == "LinkedIn",
                      onHover: () => setState(() => hoverLink = "LinkedIn"),
                      onHoverExit: () => setState(() => hoverLink = null),
                    ),
                    LinkCard(
                      icon: FontAwesomeIcons.twitter,
                      title: "Twitter",
                      url: "https://twitter.com/",
                      isHovered: hoverLink == "Twitter",
                      onHover: () => setState(() => hoverLink = "Twitter"),
                      onHoverExit: () => setState(() => hoverLink = null),
                    ),
                    LinkCard(
                      icon: FontAwesomeIcons.instagram,
                      title: "Instagram",
                      url: "https://www.instagram.com/",
                      isHovered: hoverLink == "Instagram",
                      onHover: () => setState(() => hoverLink = "Instagram"),
                      onHoverExit: () => setState(() => hoverLink = null),
                    ),
                    LinkCard(
                      icon: FontAwesomeIcons.github,
                      title: "GitHub",
                      url: "https://github.com/",
                      isHovered: hoverLink == "GitHub",
                      onHover: () => setState(() => hoverLink = "GitHub"),
                      onHoverExit: () => setState(() => hoverLink = null),
                    ),
                    LinkCard(
                      icon: FontAwesomeIcons.envelope,
                      title: "Email",
                      url: "mailto:example@example.com",
                      isHovered: hoverLink == "Email",
                      onHover: () => setState(() => hoverLink = "Email"),
                      onHoverExit: () => setState(() => hoverLink = null),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LinkCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String url;
  final bool isHovered;
  final VoidCallback onHover;
  final VoidCallback onHoverExit;

  const LinkCard({super.key, 
    required this.icon,
    required this.title,
    required this.url,
    required this.isHovered,
    required this.onHover,
    required this.onHoverExit,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle link redirection here
        launchUrl(Uri.parse(url) as String);
      },
      onHover: (value) {
        if (value) {
          onHover();
        } else {
          onHoverExit();
        }
      },
      child: Card(
        elevation: isHovered ? 4 : 2,
        color: isHovered ? Colors.blue.withOpacity(0.2) : Colors.white,
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            title,
            style: TextStyle(
              color: isHovered ? Colors.blue : Colors.black,
              fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  void launchUrl(String url) async {
    String urlString = url.toString();
    if (await canLaunch(urlString)) {
      await launch(urlString);
    } else {
      throw 'Could not launch $urlString';
    }
  }


}
