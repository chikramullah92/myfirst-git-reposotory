import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [

            Image.asset("assets/back_landscape.jpg",fit: BoxFit.cover,),
            BackdropFilter(filter: ImageFilter.blur(sigmaX: 4,sigmaY: 4),
              child: Container(color: Colors.black.withOpacity(0.3),)),
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                  Expanded(flex: 3,
                    child: Container(

                     // height: 200,
                     margin: EdgeInsets.only(left:MediaQuery.of(context).size.width*0.15 ,
                         right:MediaQuery.of(context).size.width*0.15,
                         top: MediaQuery.of(context).size.height*0.05,
                         bottom: MediaQuery.of(context).size.height*0.05),
                    //  alignment: Alignment.center,


                        child: Image.asset("assets/back_portrait.jpg",fit: BoxFit.fill,
                          ),


                    ),
                  ),
                  Expanded(flex: 2,child: Container(color: Colors.orange,height:400,child: Image.asset("assets/back_portrait.jpg"),)),
                //  Container(height: 200,color: Colors.green,)
                ],),
              ),
            )
          ],
        ),

       /* child: Column(
          children: [
            Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Container(
                      color: Colors.green,
                    ),

                    Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover,
                        image: AssetImage("assets/back_portrait.jpg"))),),
                    Text("Abc",style: TextStyle(color: Colors.amber,fontSize: 30)),
                   // Image(image: AssetImage("assets/back_portrait.jpg"),)
                  ],
                )),
            Expanded(
                flex: 1,
                child: Container(
                  color: Colors.cyan,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.grey,
                )),
          ],
        ),*/
      ),
    );
  }
}
