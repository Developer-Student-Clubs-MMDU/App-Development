import 'package:flutter/material.dart';
import '../data/skills_data.dart';
import '../providers/skills_provider.dart';
import 'package:provider/provider.dart';

class SecondScreen extends StatelessWidget {
  static String id = "SecondScreen";
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[800],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Consumer<SkillsProvider>(
          builder: (context, provider, child) {
            return ListView.builder(
              itemCount: provider.availableSkills.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(provider.availableSkills[index].skillName,
                            style: const TextStyle(fontSize: 22)),
                      ),
                      IconButton(
                        icon: Icon(
                          provider.availableSkills[index].icon,
                          size: 40,
                        ),
                        onPressed: () {
                          provider.addSkill(index);
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
