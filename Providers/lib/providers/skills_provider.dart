import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../data/skills_data.dart';

class SkillsProvider extends ChangeNotifier {

  List<Skills> availableSkills = [
    Git, AppDev, WebDev, Backend, DA, CC, DM,DSA, C, Cpp, Python
  ];

  List<Skills> addedSkills = [];

  void deleteSkill(int index){
    addedSkills[index].icon = Icons.add;
    addedSkills[index].addedSkill = false;
    addedSkills.removeAt(index);
    notifyListeners();
  }

  void addSkill(int index){
    availableSkills[index].icon = Icons.check;
    availableSkills[index].addedSkill = true;
    addedSkills.add(availableSkills[index]);
    notifyListeners();
  }

  List<Skills> getAddedSkillsList(){
    return addedSkills;
  }
}