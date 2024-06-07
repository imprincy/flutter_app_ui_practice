import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';


class PpiCall extends StatefulWidget{
  const PpiCall({super.key});

  @override
  State<PpiCall> createState() => _ApiCallState();
}

class _ApiCallState extends State<PpiCall> {

 List<dynamic> responseData=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hi State'),
        elevation: 8,
      ),body:  SingleChildScrollView(
        child: Column(
        children: [
          Text('Response is :-$responseData')
        ],
            ),
      ),
    );
  }

  void apiState() async{
    Response response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
    setState(() {
      List<dynamic> data = json.decode(response.body);
      print(data[0]['title']);
      print(data[1]['title']);
      responseData.addAll(data);
    });
  }
}