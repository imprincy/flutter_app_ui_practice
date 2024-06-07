import 'package:app_practice/model_teacher.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Data extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelTeacher();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Showing Data"),
          elevation: 8,
        ),
        body: Consumer<ModelTeacher>(
          builder: (BuildContext context, ModelTeacher value, Widget? child) {
            if(value.items.isEmpty) {
              value.readTeacherData();
            }
            return ListView.builder(
              itemCount: value.items.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {

                return Column(
                  children: [Text(value.items[index].toString())],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
