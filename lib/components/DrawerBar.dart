import 'package:flutter/material.dart';
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
              
              
                  DrawerItems("launch.png","Launches"),
               Padding(
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
               DrawerItems("astronaut.png","Astronauts"),
               DrawerItems("satellite.png","Stations"),
               
            
                   
             

             ],
           ),
         ),
       ));
  }


}


class DrawerItems extends StatelessWidget{
  final String iconData;
  final String text;
  DrawerItems(this.iconData,this.text);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

   return Padding(
                 padding:  EdgeInsets.all(size.height/90),
                 child: InkWell(
                   onTap: (){
                     print("object");
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