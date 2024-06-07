import 'package:app_practice/widgets/third_api/ModelPokemon.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pokemon extends StatelessWidget {
  const Pokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return ModelPokemon();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pokemon List"),
          elevation: 8,
        ),
        body: Consumer<ModelPokemon>(
          builder: (BuildContext context, ModelPokemon value, Widget? child) {
            if (value.responseData.isEmpty) {
              value.apiPokemonCalling();
              return const Center(child: CircularProgressIndicator());
            }else{
               return ListView.builder(
                itemCount: value.responseData.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Text('Name:-${value.responseData[index]['name']}');
                },
              );
            }
          },
        ),
      ),
    );
  }
}
