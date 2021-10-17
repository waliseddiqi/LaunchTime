import 'package:flutter/material.dart';
import 'package:launchtime/DataModels/AstronautModel.dart';
import 'package:launchtime/DataModels/EventsModel.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:launchtime/DataModels/SpaceStationModel.dart';
import 'package:launchtime/ViewModels/launch_card_view_model.dart';
import 'package:launchtime/ViewModels/event_card_view_model.dart';
import 'package:launchtime/colors.dart';
import 'package:stacked/stacked.dart';

class StationCard extends StatelessWidget{
  final StationResult data;
  StationCard({required this.data});

  //LaunchCardViewModel
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
       Padding(
        padding:  EdgeInsets.all(size.height/90),
        child: Center(
         child: Text("${data.name}"),
      ),
    );
  }




}



