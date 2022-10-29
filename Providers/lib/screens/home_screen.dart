import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'package:provider/provider.dart';
import '../providers/skills_provider.dart';

class MyHomePage extends StatelessWidget {
  static String id = "HomeScreen";
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PROFILE"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage("assets/work.jpg"),
                ),
              ),
            ),
            Expanded(
              child: Consumer<SkillsProvider>(
                builder: (context, provider, child) {
                  return ListView.builder(
                    itemCount: provider.getAddedSkillsList().length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade800,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.all(12),
                        margin: EdgeInsets.all(15),

                        child: Row(
                          children: [
                            Expanded(
                              child:
                                  Text(provider.addedSkills[index].skillName,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white
                                  ),),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.delete_outline,
                                color: Colors.white,
                                size: 40,
                              ),
                              onPressed: () {
                                provider.deleteSkill(index);
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
            Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.all(50),
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, SecondScreen.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Add Skill",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
