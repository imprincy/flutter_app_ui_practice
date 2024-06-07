import 'package:app_practice/db_helper.dart';
import 'package:app_practice/model_teacher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Teacher extends StatelessWidget {
  const Teacher({super.key});

  @override
  Widget build(BuildContext context) {
    DbHelper dbHelper = DbHelper();

    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelTeacher();
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, 'data');
          },
          child: Icon(Icons.next_plan_outlined),
        ),
        appBar: AppBar(
          title: const Text("Record of Teacher"),
          elevation: 10,
        ),
        body: Consumer<ModelTeacher>(
          builder: (BuildContext context, ModelTeacher value, Widget? child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: value.nameController,
                    decoration: const InputDecoration(
                        labelText: "Name of the Teacher",
                        hintText: "Enter Name",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  TextField(
                    controller: value.subjectController,
                    decoration: const InputDecoration(
                        labelText: "Subject of the Teacher",
                        hintText: "Enter Name",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  TextField(
                    controller: value.ageController,
                    decoration: const InputDecoration(
                        labelText: "Age of the Teacher",
                        hintText: "Enter Name",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  TextField(
                    controller: value.experienceController,
                    decoration: const InputDecoration(
                        labelText: "Experience in Teaching",
                        hintText: "Enter Name",
                        labelStyle:
                            TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        value.addTeacherData(
                            name: value.nameController.text,
                            subject: value.subjectController.text,
                            age: int.parse(value.ageController.text),
                            experinece: value.experienceController.text);
                      },
                      child: const Text(
                        "Click here to Proceed",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(decoration: TextDecoration.underline),
                      ))
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
