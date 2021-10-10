import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:launchtime/Services/api_service.dart';
import 'package:launchtime/devdata.dart';
import 'package:stacked/stacked.dart';

class HomePageDataViewModel extends FutureViewModel<LaunchModel>{
  final BuildContext context;
  HomePageDataViewModel(this.context);
  
  @override
  Future<LaunchModel> futureToRun()async {
   //ApiServise apiServise = new ApiServise();
 // final response = await apiServise.getLaunch();
        String data = await DefaultAssetBundle.of(context)
    .loadString("assets/data.json");

   final parsed = json.decode(data);
   
   LaunchModel res =  LaunchModel.fromJson(parsed);
  
   return res;
  
  }


}