import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http;

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScreenState();
  }
}

class ScreenState extends State<Screen> {
  String responseData='';
  @override
  void initState() {
  
    super.initState();
    gettingApiResponse();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.indigo.shade50,
        title: const Text("Application Programming Interface"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Here is the Data in JSON Format"),
            Text("Response is-:$responseData")
          ],
        ),
      ),
    );
  }

  Future<void> gettingApiResponse() async{
    Response response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    setState(() {
     responseData = response.body;
    });

    print(response.body);
  }
}
