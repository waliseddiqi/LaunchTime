import 'package:flutter/cupertino.dart';
import 'package:launchtime/DataModels/EventsModel.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:stacked/stacked.dart';

class EventCardViewModel extends BaseViewModel{
  final EventResults launchData;
EventCardViewModel(this.launchData);
ScrollController listController = new ScrollController();
bool isDetailsVisible = false;








}