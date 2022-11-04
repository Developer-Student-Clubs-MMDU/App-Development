import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // List task  = [].obs;
  List tasks = [].obs;
  TextEditingController taskController = TextEditingController();
  TextEditingController updateController = TextEditingController();

  void add() async {
    tasks.add(taskController.text);
    taskController.clear();
  }

  void delete(int index) async {
    tasks.removeAt(index);
  }

  void updateTask(int index, String element) async {
    tasks[index] = element;
    updateController.clear();
    Get.back();
  }

  void updateDialog(int index) {
    Get.defaultDialog(
        title: 'Update Task',
        content: Column(
          children: [
            TextField(
              controller: updateController,
              decoration: InputDecoration(
                  label: Text(
                    'Update task',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.4)),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      updateController.text.isNotEmpty
                          ? updateTask(index, updateController.text)
                          : null;
                    },
                    child: const Text('Update'))
              ],
            )
          ],
        ));
  }
}
