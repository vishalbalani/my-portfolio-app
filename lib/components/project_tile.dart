import 'package:flutter/material.dart';
import 'package:portfolio/models/project.dart';

class ProjectTile extends StatelessWidget {
  final Project project;
  const ProjectTile({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            project.pName,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Image.asset(
            project.imagePath,
            width: 150,
            height: 150,
          ),
          const SizedBox(height: 8),
          Text(
            project.pDescription,
            style: const TextStyle(fontSize: 15, color: Colors.white70),
            textAlign: TextAlign.center,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 20,
            indent: 16,
            endIndent: 16,
          ),
        ],
      ),
    );
  }
}
