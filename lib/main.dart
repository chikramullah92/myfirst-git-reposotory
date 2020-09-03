import 'package:flutter/material.dart';

import 'package:portrait_vs_landscape/tablet.dart';

import 'gridview_example.dart';
import 'mobile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
     // GridViewExample()


    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth > 600){               ///     for temp 650 original
        // print(MediaQuery.of(context).size.width);
          return Tablet();
        }else{

          print(MediaQuery.of(context).size.width);
          print(MediaQuery.of(context).size.height);


          return Mobile();
        }
      },
    );
  }
}



/*
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TypeDevice(context),
    );
  }
}

Widget TypeDevice(BuildContext context){

 var media = MediaQuery.of(context).size.width;

 */
/* if(MediaQuery.of(context).orientation == Orientation.portrait){
    print("Portrait $media");
    return Portrait(context);
  }else{
    print("Landscape $media");
    return LandScape(context);
  }
*/
/*

}


*/
