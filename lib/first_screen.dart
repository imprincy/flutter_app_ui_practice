import 'package:app_practice/second_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  TextEditingController controller = TextEditingController();
  var genderController = TextEditingController();
  var ageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            TextField(
              controller: controller,
            ),


            ElevatedButton(onPressed: (){

              Navigator.pushNamed(context, 'secondScreen', arguments: SecondScreenArg(name: controller.text, ));

            }, child: const Text("Open Next Screen"))

          ],
        ),
      ),
    );
  }
}
