import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomItemList extends StatelessWidget{
  
  final String _lugar;
  final String _imagen;
  CustomItemList(this._lugar,this._imagen);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0),
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: CupertinoColors.lightBackgroundGray,
            width: 1.0
          )
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image.asset('assets/${this._imagen}', width: 50.0, height: 50.0,),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(this._lugar, style: TextStyle(fontSize: 18.0),),
          ),
          Expanded(child: SizedBox(),),
          Row(
            children: <Widget>[
                Icon(IconData(0xf4b3,fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: Colors.yellow),
                Icon(IconData(0xf3d3,fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage), color: CupertinoColors.inactiveGray),
            ],  
          )
        ],
      ),
      //leading: Image.asset('assets/${this._imagen}'),
      //title: Text(this._lugar),
      /*trailing: Row(
        children: <Widget>[
          Icon(IconData(0xf4b3,fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
          Icon(IconData(0xf3d3,fontFamily: CupertinoIcons.iconFont, fontPackage: CupertinoIcons.iconFontPackage)),
        ],        
      ),*/
    );
  }

}