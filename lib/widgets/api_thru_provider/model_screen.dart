import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:http/http.dart';

class ModelScreen extends ChangeNotifier{

  List<dynamic> responseData=[];
  
  void apiResponseCall()async{
    Response response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
    List<dynamic>apiData=json.decode(response.body);
    responseData.addAll(apiData);
    // print(apiData[0]['title']);
    notifyListeners();
  }
}