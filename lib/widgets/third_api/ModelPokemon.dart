import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
import 'package:http/http.dart';
class ModelPokemon extends ChangeNotifier{
  List<dynamic> responseData=[];

  void apiPokemonCalling()async{
    Response response=await http.get(Uri.parse('https://pokeapi.co/api/v2/pokemon'));
    List<dynamic> dataPokemon= json.decode(response.body)['results'];
    responseData.addAll(dataPokemon);
    notifyListeners();
  }
}