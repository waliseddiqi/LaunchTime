import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter/material.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:launchtime/Services/api_service.dart';

import 'package:stacked/stacked.dart';

class HomePageDataViewModel extends FutureViewModel<LaunchModel>{
  final BuildContext context;
   Color? color;
  HomePageDataViewModel(this.context);
  
  @override
  Future<LaunchModel> futureToRun()async {
    
    try {
  ApiServise apiServise = new ApiServise();
  Response response = await apiServise.getDate("https://lldev.thespacedevs.com/2.2.0/launch/upcoming/?is_crewed=false&include_suborbital=true&related=false&hide_recent_previous=false");
  LaunchModel res =  LaunchModel.fromJson(response.data);
    if (null != response.headers.value(DIO_CACHE_HEADER_KEY_DATA_SOURCE)) {
       print("from cache");
       color = Colors.red;
      } else {
        print("from net");
        color = Colors.white;
          // data come from net
      }
   return res;
    } catch (e) {
      print(e);
      throw Exception();
    }
    ///This API is only for production 
    ///We only use local json files for development

  
  }


}