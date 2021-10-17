import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:launchtime/AstronautPage.dart';
import 'package:launchtime/EventsPage.dart';
import 'package:launchtime/LaunchPage.dart';
import 'package:launchtime/StationPage.dart';
import 'package:launchtime/colors.dart';

class DrawerBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
           width: size.width/2,
           height: size.height/1.05,
              color: Colors.transparent,
         child: Center(
           child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,

               borderRadius: BorderRadius.only(topRight: Radius.circular(size.height/90),bottomRight: Radius.circular(size.height/90)
             ),
           ),
           child: Column(
             children: [
              
              
                  DrawerItems("launch.png","Launches",(){
                   Navigator.push(context,CupertinoPageRoute(builder: (context)=>HomePage()));

                  }),
               InkWell(
                 onTap: (){
                   Navigator.push(context,CupertinoPageRoute(builder: (context)=>EventsPage()));
                 },
                 child: Padding(
                   padding:  EdgeInsets.all(size.height/90),
                   child: Container
                   (height: size.height/14,
                   
                    decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(size.height/90)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(size.height/90),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(                    padding:  EdgeInsets.all(size.height/90),
               
                            child: SizedBox(
                              height: size.height/45,
                              child: Icon(Icons.event,color: Colors.white,))
                          ),
                          Padding(
                                              padding:  EdgeInsets.all(size.height/90),
               
                            child: Text("Events",style: TextStyle(fontSize: size.height/45,color: Colors.white)),
                          )
                        ],
                      ),
                    ),
                   
                   ),
                   
                 ),
               ),
               DrawerItems("astronaut.png","Astronauts",(){
                   Navigator.push(context,CupertinoPageRoute(builder: (context)=>AstronautPage()));

               }),
               DrawerItems("satellite.png","Stations",(){
                   Navigator.push(context,CupertinoPageRoute(builder: (context)=>StationsPage()));

               }),
               
            
                   
             

             ],
           ),
         ),
       ));
  }


}


class DrawerItems extends StatelessWidget{
  final String iconData;
  final String text;
  final Function ontap;
  DrawerItems(this.iconData,this.text,this.ontap);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return Padding(
                 padding:  EdgeInsets.all(size.height/90),
                 child: InkWell(
                   onTap: (){
                     ontap();
                   },
                   child: Center(
                     child: Container
                     (height: size.height/14,
                     
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor,
                        borderRadius: BorderRadius.circular(size.height/90)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(size.height/90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(                    padding:  EdgeInsets.all(size.height/90),
                 
                                 child: SizedBox(
                                height: size.height/45,
                                child: Image.asset("assets/"+iconData))
                            ),
                            Padding(
                                                padding:  EdgeInsets.all(size.height/90),
                 
                              child: Text(text,style: TextStyle(fontSize: size.height/45,color: Colors.white)),
                            )
                          ],
                        ),
                      ),
                     
                     ),
                   ),
                 ),
                 
               );
  }

}