import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:landmarkapp/src/views/custom_item.dart';

class HomeScreen extends StatelessWidget{

  List<String> _lugares = ['Charley Rivers','Chilkot Trail','Chincoteague','Hidden Lake','Icy Bay','Lake McDonald','Rainbow Lake','Silver Salmon Creek','St. Mary Lake','Turtle Rock','Twin Lake','Umbagog'];
  List<String> _imagenes = ['charleyrivers.jpg','chilkoottrail.jpg','chincoteague.jpg','hiddenlake.jpg','icybay.jpg','lakemcdonald.jpg','rainbowlake.jpg','silversalmoncreek.jpg','stmarylake.jpg','turtlerock.jpg','twinlake.jpg','umbagog.jpg'];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CupertinoPageScaffold(
        child: CustomScrollView(
          slivers: <Widget>[
            CupertinoSliverNavigationBar(
              largeTitle: Text('Landmarks'),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context,i){
                  return CustomItemList(_lugares[i],_imagenes[i]);
                },
                childCount: _lugares.length
              ),
            )
          ],
        ),
      ),
    );
  }

}