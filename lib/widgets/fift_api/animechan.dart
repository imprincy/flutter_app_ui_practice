import 'package:app_practice/widgets/fift_api/model_anime.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Animechan extends StatelessWidget {
  const Animechan({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelAnime();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Mechanic"),
          elevation: 10,
        ),
        body: Consumer<ModelAnime>(
          builder: (BuildContext context, ModelAnime value, Widget? child) {
            if (value.dataAnime.isEmpty) {
              value.apiCallingAnime();
            }
            return ListView.builder(
              itemCount: value.dataAnime.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Quote is:-${value.dataAnime[index]['quote']}'),
                        Text('Id is:-${value.dataAnime[index]['id']}'),
                      ],
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
