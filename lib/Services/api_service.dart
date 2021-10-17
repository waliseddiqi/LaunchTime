import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';

import 'package:launchtime/Services/api_handler.dart';
import 'package:launchtime/Services/exceptions.dart';

//
class ApiServise{
  Future<Response> getDate(String url)async{

    Dio dio  = Dio();
    DioCacheManager _dioCacheManager;
    _dioCacheManager = DioCacheManager(CacheConfig());

    Options _cacheOptions = buildCacheOptions(Duration(days: 1),options: Options(      headers: {
        "Content-Type": "application/json",
          
      
      }));
   
    dio.interceptors.add(_dioCacheManager.interceptor);
    var response;
  
    try {
       response = await dio.get(url,
       options: _cacheOptions
       );
      
     response = await ApiHandler.handle(response);
   
      return response;
   } on TimeoutException{
     //  SnackbarService snackbarService =locator<SnackbarService>();
       
     //  snackbarService.showCustomSnackBar(message: "Veri akışınız yavaşlandı",variant: SnackbarType.first);
      throw TimeOutException("Time out exceptio caught");
    }
    on SocketException{
      // SnackbarService snackbarService =locator<SnackbarService>();
       
      // snackbarService.showCustomSnackBar(message: "Check internet Connection",variant: SnackbarType.first);
      throw SocketException("Socket exception caught");
    }

  }





  
}