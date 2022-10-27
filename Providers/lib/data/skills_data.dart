import 'package:flutter/material.dart';

class Skills {
  late String skillName;
  late bool addedSkill ;
  late IconData icon = Icons.add;
  Skills(this.skillName);

  String getSkillName(){
    return skillName;
  }
}

Skills Git = Skills("Git");
Skills AppDev = Skills("App development");
Skills WebDev = Skills("Web development");
Skills AIML = Skills("AI / ML");
Skills DA = Skills("Data Analysis");
Skills CC = Skills("Competitive Coding");
Skills DM = Skills("Data Modelling");
Skills Backend = Skills("Backend");
Skills C = Skills("C");
Skills Cpp = Skills("C++");
Skills Python = Skills("Python");
Skills DSA = Skills("Data Structures & Algorithm");

