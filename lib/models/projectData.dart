import 'package:flutter/material.dart';
import 'project.dart';

class projectData extends ChangeNotifier {
  //list
  final List<Project> _data = [
    Project(
      pName: "Wellbeing Statistics",
      pDescription: "Introducing 'Wellbeing Statistics' - a native Android app designed to help you understand your digital habits and their impact on your overall wellbeing. With its intuitive interface and powerful backend, providing you with a comprehensive overview of your smartphone usage patterns.\n• A Native Android app that maps the user’s app usage activity.\n• Application Usage Activity APIs and APIs to get location data in the background. • App usage, last time used and its used location; all this data is listed in chronological order.",
      imagePath: "assets/images/wellbeing.jpg",
    ),
    Project(
      pName: "PassVault",
      pDescription: "• I am the project manager and team leader for the development of the PassVault application. Password saving and generating strong passwords are the main functionality of the application.\n • Implemented Base64 encryption for securing app data against unauthorized access.\n• The application is available for installation from the play store.",
      imagePath: "assets/images/passvault.png",
    ),
    Project(
      pName: "BU FINDER",
      pDescription: "• This project was inspired by real-life problems faced by almost all universities. Because of the size of their campuses, it can be difficult to find lost items for students.\n• E-Lost and Found portal for college students for finding and reporting lost items digitally.",
      imagePath: "assets/images/bufinder.png",
    ),Project(
      pName: "ECOM. (E-commerce Site)",
      pDescription: "• Developed an e-commerce website using PHP, MySQL, HTML, and CSS, which allows users to create wishlists, purchase products, and includes an admin page for managing orders and inventory.\n• Designed and implemented a user-friendly interface for the e-commerce site, optimizing the customer experience and increasing sales.",
      imagePath: "assets/images/ecom.png",
    ),Project(
      pName: "HONEYTRAIL (SSH Honeypot)",
      pDescription: "• Developed a Honeytrail SSH honeypot using Python, which collects data on SSH attacks and provides insights into network security threats.\n• Created a documentation page outlining the installation guidelines for the Honeytrail SSH honeypot, making it easy for users to set up and use the software for their own security purposes.",
      imagePath: "assets/images/ssh.jpg",
    ),Project(
      pName: "AUDIO VISUALIZER & ANALYZER",
      pDescription: "• Led a team of 4 and was instrumental in successfully completing Audio Visualizer & Analyzer to analyze and visualize audio data in real-time.\n• The AI-trained model predicts the gender of audio, Matplotlib library of python is used for graph visualization and fpcalc(Calculates the fingerprint of the given audio file) used to check the similarity percentage between two audios.",
      imagePath: "assets/images/project.png",
    ),Project(
      pName: "Responsive Web DesignR",
      pDescription: "",
      imagePath: "assets/images/css.png",
    ),
  ];

  List<Project> get pData => _data;
}
