import 'package:launchtime/Services/exceptions.dart';
import 'package:http/http.dart'as http;

class ApiHandler{

  ApiHandler();



 static Future handle( http.Response httpResponse )async{
      switch (httpResponse.statusCode) {
      case 200:
      
        return httpResponse;
      case 400:
        throw BadRequestException(httpResponse.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(httpResponse.body.toString());
      case 500:
      // snackbarService.showCustomSnackBar(message: "Veri akışınız yavaşlandı",variant: SnackbarType.first);
        throw BadRequestException("");
      default:
        throw FetchDataException(
          'Error occured while Communication with Server with StatusCode: ${httpResponse.statusCode}');
    }
  }
}