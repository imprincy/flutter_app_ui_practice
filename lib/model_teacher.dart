import 'package:app_practice/db_helper.dart';
import 'package:flutter/material.dart';

class ModelTeacher extends ChangeNotifier {

  TextEditingController nameController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController experienceController = TextEditingController();

  DbHelper dbHelper = DbHelper();
  List<Map> items=[];

  void addTeacherData({required String name,
    required String subject,
    required int age,
    required String experinece}) {


    nameController.text='';
    subjectController.text='';
    ageController.text='';
    experienceController.text='';

    dbHelper.addData(name: name, subject: subject, age: age, experience: experinece);
    print("added");
    notifyListeners();
  }

  void readTeacherData()async {
    List<Map> allData=await dbHelper.readData();
    items.addAll(allData);
    notifyListeners();
  }
}


//Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkNDAxN2UzY2RiODUyZDhlZDJkZTc4ODc0MzQyOWFkMCIsInN1YiI6IjY1Y2I5NGE2MDA1MDhhMDE3YjQyYWY1NiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.MHA5XmkPjOu9g49gAtWUu1nMY18OcDQepaR801z0EiE