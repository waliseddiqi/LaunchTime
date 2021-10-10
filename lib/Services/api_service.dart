import 'dart:async';
import 'dart:io';

import 'package:http/http.dart'as http;
import 'package:launchtime/Services/api_handler.dart';
import 'package:launchtime/Services/exceptions.dart';

class ApiServise{

  Future<http.Response> getLaunch()async{

     var response;
    try {
       response =  await http.get(Uri.parse("https://lldev.thespacedevs.com/2.2.0/launch/upcoming/?is_crewed=false&include_suborbital=true&related=false&hide_recent_previous=false"),
        headers: {
         "Content-Type": "application/json",
            
        
        }
      
      ).timeout(Duration(seconds: 15));
      
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