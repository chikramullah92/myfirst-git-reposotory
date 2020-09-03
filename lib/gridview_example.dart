import 'package:flutter/material.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final bool useMobileLayout =
        mediaWidth < 600; //  ....... to complete expression condition
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: Text("GridViewExample")),
      body: useMobileLayout ? GridView4Phone(orientation) : GridView4Tablet(orientation),
    );

    /*LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth <600){
          return GridView4Phone();
        }else{
          return GridView4Tablet();
        }
      },
    );*/
  }
}

Widget GridView4Phone(Orientation orientation) {

    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(100, (index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.red[100 * (index % 9)],
              child: Text('$index'),
            ),
          );
        }),
      ),
    );


}

Widget GridView4Tablet(Orientation orientation) {

    return Padding(
      padding: EdgeInsets.all(5.0),
      child: GridView.count(
        crossAxisCount: orientation == Orientation.portrait ? 4 : 6,
        childAspectRatio: 1.0,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: List.generate(100, (index) {
          return Card(
            child: Container(
              alignment: Alignment.center,
              color: Colors.green[100 * (index % 9)],
              child: Text('$index'),
            ),
          );
        }),
      ),
    );


}
