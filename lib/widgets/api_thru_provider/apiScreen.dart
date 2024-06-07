import 'package:app_practice/widgets/api_thru_provider/model_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Screening extends StatelessWidget {
  const Screening({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelScreen();
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 8,
          title: const Text("Screening Test"),
        ),
        body: Center(
          child: Consumer(
            builder: (BuildContext context, ModelScreen value, Widget? child) {
              if (value.responseData.isEmpty) {
                value.apiResponseCall();
              }
              return ListView.builder(
                itemCount: value.responseData.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  print(index);
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Card(elevation: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("title:- ${value.responseData[index]['title']}"),
                            Text("userId:- ${value.responseData[index]['userId']}"),
                            Text("Id:- ${value.responseData[index]['id']}"),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
