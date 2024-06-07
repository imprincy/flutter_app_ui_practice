import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GpayViewModel extends ChangeNotifier{
  List<dynamic>transaction=[];
  List<dynamic>peopleRecord=[];
  List<dynamic>business=[];
  List<dynamic>recharges=[];
  List<dynamic>offer=[];
  List<dynamic>tile=[];

  void apiCalling()async{
    String allData=await rootBundle.loadString('assets/gpay.json');
    dynamic data=json.decode(allData);
    transaction=data['transaction'];
    peopleRecord=data['peopleRecord'];
    business=data['business'];
    recharges=data['recharges'];
    offer=data['offer'];
    tile=data['tile'];
    notifyListeners();
  }
}


