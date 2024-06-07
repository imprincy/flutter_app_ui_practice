import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http/http.dart';

class ModelFacts extends ChangeNotifier {
  List<dynamic> catFacts=[];

  void apiFactsCalling() async {
    Response response = await http.get(Uri.parse(
        'https://cat-fact.herokuapp.com/facts?animal_type=cat&amount=10'));
    List<dynamic>dataFacts=json.decode(response.body);
    catFacts.addAll(dataFacts);
    notifyListeners();
  }
}
