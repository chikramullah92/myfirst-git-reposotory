import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Mobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: 
      DefaultTabController(
        length: 3,
        child: Scaffold(
         /* child: Column(
              children:[
                Expanded(
                  flex: 2,
                  child: Container(

                    //,width: MediaQuery.of(context).size.width,

                      // mainAxisAlignment: MainAxisAlignment.start,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                    decoration: BoxDecoration(image: DecorationImage(image:
                    AssetImage("assets/back_portrait.jpg"),fit: BoxFit.fill))
                    ,


        ),

                ),
              Expanded(
                flex: 1,child: Container(color: Colors.green,),

              )]
    )*/
         appBar: AppBar(
          title: Text("Sports Vendor "),
         ),backgroundColor: Colors.black,
          bottomNavigationBar: TabBar(unselectedLabelColor: Colors.white,labelColor: Colors.amber,
            tabs: [Tab(icon: Icon(Icons.videogame_asset),child: Text("Football"),),
              Tab(icon: Icon(Icons.accessibility_new),child: Text("Cricket"),),
              Tab(icon: Icon(Icons.audiotrack),child: Text("Music"))],),
          body: TabBarView(
            children: [
              SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      child: Container(height:300,width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/football.jpg"),fit: BoxFit.fill)),
                        // child: Align(alignment: Alignment.bottomCenter,child: Container(height:80,width: 300,child: SingleChildScrollView(scrollDirection: Axis.vertical,
                        //   child: TextField(keyboardType: TextInputType.multiline),),),)
                      ),
                    ),
                    Card(
                      child: Container(height:200,width:MediaQuery.of(context).size.width,color: Colors.grey,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(elevation: 10,shadowColor: Colors.white,
                                child: Container(height:130,width:130,color: Colors.green,)),
                            Card(elevation:10,shadowColor: Colors.white,
                                child: Container(height:130,width:130,color: Colors.cyanAccent,))
                          ],),),
                    )
                  ],
                ),
              ),
            ),
              SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(height:300,width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/cricket.jpg"),fit: BoxFit.fitHeight)),
                        // child: Align(alignment: Alignment.bottomCenter,child: Container(height:80,width: 300,child: SingleChildScrollView(scrollDirection: Axis.vertical,
                        //   child: TextField(keyboardType: TextInputType.multiline),),),)
                      ),
                      Container(height:200,width:MediaQuery.of(context).size.width,color: Colors.grey,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Card(color: Colors.greenAccent,elevation: 10,shadowColor: Colors.white,child: Container(height:130,width:MediaQuery.of(context).size.width*.8,
                              child: GridView.count(crossAxisSpacing: 50,crossAxisCount: 3,children: List.generate(20, (index) => Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Item jo k extra ho gya line ka $index" ,overflow: TextOverflow.ellipsis,),
                                ))),),)),
                          //  Container(height:130,width:130,color: Colors.cyanAccent,)
                          ],),)
                    ],
                  ),
                ),
              ),
              SafeArea(
                child: Icon(Icons.queue_music,size: 50,color: Colors.white,)
              ),],
          ),



         ),
      ));
  }
}

