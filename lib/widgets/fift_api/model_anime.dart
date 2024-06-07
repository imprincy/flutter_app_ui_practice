import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:http/http.dart';

class ModelAnime extends ChangeNotifier{
  List<dynamic> dataAnime=[];


  void apiCallingAnime() async{
    Response response=await http.get(Uri.parse('https://animechan.xyz/api/quotes'));
   List<dynamic> animeCall=json.decode(response.body);
   dataAnime.addAll(animeCall);
    notifyListeners();
}
}