import 'package:flutter/material.dart';
import 'package:portfolio/components/project_tile.dart';
import 'package:portfolio/const.dart';
import 'package:provider/provider.dart'; // Import provider package
import 'package:portfolio/models/projectData.dart';
import 'package:portfolio/models/project.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({Key? key}) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<projectData>(
      // Use Consumer instead of Consume
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text("Project Works", style: TextStyle(color: secondColor, fontSize: 20),),
              const Divider(
                color: secondColor,
                thickness: 1,
                height: 20,
                indent: 16,
                endIndent: 16,
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.pData.length, // Specify the itemCount
                  itemBuilder: (context, index) {
                    Project eachProject = value.pData[index];
                    // Build your widget using eachProject
                    return ProjectTile(project: eachProject);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
