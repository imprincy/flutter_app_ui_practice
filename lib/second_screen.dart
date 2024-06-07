import 'package:flutter/material.dart';

class SecondScreenArg{

  String name;


  SecondScreenArg({required this.name});
}


class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    var arg = ModalRoute.of(context)!.settings.arguments as SecondScreenArg;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(arg.name, style: const TextStyle(fontSize: 16),)
          ],
        ),
      ),
    );
  }
}
