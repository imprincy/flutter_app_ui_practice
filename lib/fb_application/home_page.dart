import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String responseData = '';

  @override
  void initState() {
    getDataFromServer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 9,
        title: Text("Home:-"),
      ),
      body: Center(
        child: Text(responseData),
      ),
    );
  }

  Future<void> getDataFromServer() async {
    Response response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/albums/2'),
        headers: {});

    if (response.statusCode == 200) {
      setState(() {
        responseData = json.decode(response.body)['title'];
      });
    } else {
      setState(() {
        responseData = 'Something went wrong';
      });
    }
  }
}
