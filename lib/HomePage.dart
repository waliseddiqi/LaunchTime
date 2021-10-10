import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:launchtime/colors.dart';
import 'package:launchtime/components/Card.dart';
import 'package:launchtime/components/DrawerBar.dart';
import 'package:stacked/stacked.dart';

import 'ViewModels/FutureViewModels/home_page_view_model.dart';

class HomePage extends StatelessWidget{
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
       body:  ViewModelBuilder<HomePageDataViewModel>.reactive(
            viewModelBuilder: () => HomePageDataViewModel(context),

            builder: (context, model, child) =>
            model.isBusy?Center(child: CircularProgressIndicator(),):
          Center(
            
           child: Container(
             child: PageView.builder(
               physics: BouncingScrollPhysics(),
               scrollDirection: Axis.horizontal,
               itemCount:model.data==null?0: model.data!.results!.length,
               
               itemBuilder: (context,index){
               Results results = model.data!.results![index];
               return  AnimatedHideSection(child: LaunchCard(launchData: results));
             }),
           ),
         ),
       ),
     )
   );
  }

}