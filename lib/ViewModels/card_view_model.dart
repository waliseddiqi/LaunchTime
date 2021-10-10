import 'package:flutter/cupertino.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:stacked/stacked.dart';

class LaunchCardViewModel extends BaseViewModel{
  final Results launchData;
LaunchCardViewModel(this.launchData);
ScrollController listController = new ScrollController();
bool isDetailsVisible = false;

Duration getDate(String? date){
  String formatedDate = date!.split("T").join(" ").split("Z").join();
  DateTime now = DateTime.now();
  DateTime? net = DateTime.tryParse(formatedDate.toString());
  Duration day = net!.difference(now);

  return day;
}



int getHours(String? date){
  
  return getDate(date).inHours%24;
}

int getMinutes(String? date){
  
  return getDate(date).inMinutes%60;
}

int getSeconds(String? date){
  
  return getDate(date).inSeconds%60;
}





}