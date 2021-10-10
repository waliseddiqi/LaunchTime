import 'package:flutter/material.dart';
import 'package:launchtime/DataModels/LaunchModel.dart';
import 'package:launchtime/ViewModels/card_view_model.dart';
import 'package:launchtime/colors.dart';
import 'package:stacked/stacked.dart';

class LaunchCard extends StatelessWidget{
  final Results launchData;
  LaunchCard({required this.launchData});

  //LaunchCardViewModel
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  ViewModelBuilder<LaunchCardViewModel>.reactive(
            viewModelBuilder: () => LaunchCardViewModel(launchData),

            builder: (context, model, child) =>
       Padding(
        padding:  EdgeInsets.all(size.height/90),
        child: Center(
          child: Container(
            width: size.width/1.05,
            height: size.height/1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size.height/30),
              color: brightColorFirst,
                        boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Center(
              child: SizedBox(
                  height: size.height/1.23,
                      width: size.width/1.07,
                child: Center(child: ListView(
                  controller: model.listController,
                
                  shrinkWrap: true,
                  children: [
                    Padding(

                     padding: EdgeInsets.all(size.height/90),
                     child: Container(
                         decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.height/90),
                          color: brighColorSecond,
                        ),
                       child: Row(
                         children: [
                            Container(
                                   
                                     width: size.width/1.3,
                                  child: Padding(
                                     padding: EdgeInsets.all(size.height/180),
                                    child: Text("Last updated: ${launchData.lastUpdated}",overflow: TextOverflow.clip,maxLines: 2,style: TextStyle(fontSize: size.height/55,color: Colors.black),),
                                  )),
                            Padding(padding: EdgeInsets.all(size.height/180),
                            child: Icon(Icons.notification_add),
                            )
                         ],
                       ),
                     ),

                     ),
                    Padding(
                     padding: EdgeInsets.all(size.height/180),
    
                      child: Container(
                        height: size.height/3,
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(size.height/30),
                         image: DecorationImage(image: NetworkImage("${launchData.image}",),fit: BoxFit.cover)
    
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(size.height/90),
                          child: Container(
                            width: size.width/1.15,
                            
                            height: size.height/17,
                            child: Text("${launchData.name}",overflow: TextOverflow.clip,maxLines: 2,style: TextStyle(fontSize: size.height/45,color: Colors.black),)),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.all(size.height/180),
                      
                      child: Container(
                   
                        width: size.width/1.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.height/90),
                          color: brighColorSecond,
                        ),
                        child: Padding(
                     padding:  EdgeInsets.all(size.height/90),

                          child: Text("Status: ${launchData.status!.abbrev}(${launchData.status!.name})",style: TextStyle(fontSize: size.height/55,color: Colors.black),),
                        ),
                        )),
                    Padding(
                      padding:  EdgeInsets.all(size.height/180),
                      
                      child: Container(
                   
                        width: size.width/1.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.height/90),
                          color: Theme.of(context).accentColor,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                            padding:  EdgeInsets.all(size.height/180),
    
                              child: Icon(Icons.location_on_outlined,color: Colors.white,size: size.height/45,),
                            ),
                            Padding(
                             padding:  EdgeInsets.all(size.height/180),
    
                              child: Container(
                                 
                                   width: size.width/1.3,
                                child: Text("${launchData.pad!.location!.name}",overflow: TextOverflow.clip,maxLines: 2,style: TextStyle(fontSize: size.height/55,color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                        Padding(
                      padding:  EdgeInsets.all(size.height/180),
                      
                      child: Container(
                   
                        width: size.width/1.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.height/90),
                          color: Theme.of(context).accentColor,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                            padding:  EdgeInsets.all(size.height/180),
    
                              child: Icon(Icons.schedule,color: Colors.white,size: size.height/45,),
                            ),
                            Padding(
                             padding:  EdgeInsets.all(size.height/180),
    
                              child: Container(
                                 
                                   width: size.width/1.3,
                                child: Text("${model.getDate(launchData.net).inDays} Days  ${model.getHours(launchData.net)} Hours   ${model.getMinutes(launchData.net)} Minutes   ${model.getSeconds(launchData.net)} Seconds ",overflow: TextOverflow.clip,maxLines: 2,style: TextStyle(fontSize: size.height/55,color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                    ),
                                    Padding(
                      padding:  EdgeInsets.all(size.height/180),
                      
                      child: Container(
                   
                        width: size.width/1.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.height/90),
                          color: Theme.of(context).accentColor,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                            padding:  EdgeInsets.all(size.height/180),
    
                              child: Icon(Icons.flag,color: Colors.white,size: size.height/45,),
                            ),
                            Padding(
                             padding:  EdgeInsets.all(size.height/180),
    
                              child: Container(
                                 
                                   width: size.width/1.3,
                                child: Text(" ${launchData.mission!.name}",overflow: TextOverflow.clip,maxLines: 2,style: TextStyle(fontSize: size.height/55,color: Colors.white),)),
                            ),
                          ],
                        ),
                      ),
                    ),

                    model.isDetailsVisible?HideSection():SizedBox(),
                        
                    Center(
                      child: Padding(
                        padding:  EdgeInsets.all(size.height/180),
                       
                        child: Container(
                          width: size.width/2,

                          child: ElevatedButton(onPressed: (){
                            model.listController.animateTo(model.listController.position.maxScrollExtent, duration: Duration(milliseconds: 300), curve: Curves.easeIn);

                            model.isDetailsVisible = !model.isDetailsVisible;
                            
                             
                            
                            model.notifyListeners();
                          },
                          
                           child: Center(child: Text(!model.isDetailsVisible? "See More":"See Less"),)),
                        ),
                      ),
                    )
                  ],
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }




}




class HideSection extends ViewModelWidget<LaunchCardViewModel>{
  
  @override
  Widget build(BuildContext context, LaunchCardViewModel model) {
    Size size = MediaQuery.of(context).size;

    return AnimatedHideSection(
      child: Container(
        child: Column(children: [
                           Padding(
                    padding:  EdgeInsets.all(size.height/180),
                    
                    child: Container(
                 
                      width: size.width/1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.height/90),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding:  EdgeInsets.all(size.height/90),
      
                            child:Container(
                               width: size.width/1.3,
                              child: RichText(
                             
                                text: TextSpan(children: [TextSpan(text: "Mission Description: ",style: TextStyle(fontSize: size.height/55,fontWeight: FontWeight.w600)
                              
                              ),TextSpan(text: "${model.launchData.mission!.description}",style: TextStyle(fontSize: size.height/55))
                              
                              ]),),
                            )
                          ),
                          Padding(
                           padding:  EdgeInsets.all(size.height/180),
      
                            // child: Container(
                               
                            //      width: size.width/1.3,
                            //   child: Text("Mission Description: ${launchData.mission!.description}",overflow: TextOverflow.clip,style: TextStyle(fontSize: size.height/55,color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
                                Padding(
                    padding:  EdgeInsets.all(size.height/180),
                    
                    child: Container(
                 
                      width: size.width/1.1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.height/90),
                        color: Theme.of(context).accentColor,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                          padding:  EdgeInsets.all(size.height/90),
      
                            child:Container(
                               width: size.width/1.3,
                              child: RichText(
                             
                                text: TextSpan(children: [TextSpan(text: "Orbit : ",style: TextStyle(fontSize: size.height/55,fontWeight: FontWeight.w600)
                              
                              ),TextSpan(text: "${model.launchData.mission!.orbit!.name}",style: TextStyle(fontSize: size.height/55))
                              
                              ]),),
                            )
                          ),
                          Padding(
                           padding:  EdgeInsets.all(size.height/180),
      
                            // child: Container(
                               
                            //      width: size.width/1.3,
                            //   child: Text("Mission Description: ${launchData.mission!.description}",overflow: TextOverflow.clip,style: TextStyle(fontSize: size.height/55,color: Colors.white),)),
                          ),
                        ],
                      ),
                    ),
                  ),
        ],),
      ),
    );
  }


}


class AnimatedHideSection extends StatefulWidget{
    final Widget child;
    AnimatedHideSection({required this.child});
  @override
  _AnimatedHideSectionState createState() => _AnimatedHideSectionState();
}

class _AnimatedHideSectionState extends State<AnimatedHideSection> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    animationController = new AnimationController(vsync: this,duration: Duration(milliseconds: 200));
    animation = Tween<double>(begin: 0.5,end: 1).animate(animationController);
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale:animation ,
      child: widget.child);
  }
}