import 'package:app_practice/widgets/fourth_api/ModelFacts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cats extends StatelessWidget {
  const Cats({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelFacts();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cats Facts"),
          elevation: 8,
        ),
        body: Consumer<ModelFacts>(
          builder: (BuildContext context, ModelFacts value, Widget? child) {
            if (value.catFacts.isEmpty) {
              value.apiFactsCalling();
            }
            return ListView.builder(
              itemCount: value.catFacts.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 9,
                      color: Colors.indigo.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Text is:-${value.catFacts[index]['text']}'),
                          Text('Id is:-${value.catFacts[index]['_id']}')
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
    );
  }
}
