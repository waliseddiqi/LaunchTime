import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launchtime/DataModels/EventsModel.dart';
import 'package:launchtime/ViewModels/FutureViewModels/events_page_view_model.dart';
import 'package:launchtime/colors.dart';
import 'package:launchtime/components/LaunchCard.dart';
import 'package:launchtime/components/DrawerBar.dart';
import 'package:launchtime/components/EventsCard.dart';
import 'package:stacked/stacked.dart';

import 'ViewModels/FutureViewModels/launch_page_view_model.dart';

class EventsPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return SafeArea(
     
     child:Scaffold(
       backgroundColor:Theme.of(context).accentColor,
       appBar: AppBar(
         
         backgroundColor: Theme.of(context).primaryColor,
       ),
       drawer:DrawerBar(),
       body:  ViewModelBuilder<EventsPageDataViewModel>.reactive(
            viewModelBuilder: () => EventsPageDataViewModel(context),

            builder: (context, model, child) =>
            model.isBusy?Center(child: CircularProgressIndicator(),):
          Center(
            
           child: Container(
             color: model.color??Colors.white,
             child: PageView.builder(
               physics: BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,
               itemCount:model.data==null?0: model.data!.results!.length,
               
               itemBuilder: (context,index){
               EventResults results = model.data!.results![index];
               return EventCard(launchData: results);
             }),
           ),
         ),
       ),
     )
   );
  }

}