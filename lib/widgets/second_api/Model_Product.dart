import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:http/http.dart';

class ProductModel extends ChangeNotifier{
  List<dynamic> responseData=[];
  
  void apiProductCalling()async{
    Response response=await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic>apiData=json.decode(response.body);
    responseData.addAll(apiData);
    await Future.delayed(const Duration(seconds: 2));
    notifyListeners();
  }
}