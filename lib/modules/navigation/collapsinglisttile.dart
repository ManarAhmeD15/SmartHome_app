// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class CollapsingListTile extends StatefulWidget {
  final String title;
  final IconData icon;
  final AnimationController animationController;
  final bool isSelected;
  final Function onTap;


  CollapsingListTile({Key? key, required this.title,required this.icon,required this.animationController,this.isSelected=false, required this.onTap}) : super(key: key);

  @override
  _CollapsingListTileState createState() => _CollapsingListTileState();
}

class _CollapsingListTileState extends State<CollapsingListTile> {
  late Animation<double> widthAnimation, sizedBoxAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widthAnimation=Tween<double>(begin: 220,end: 70).animate(widget.animationController);
    sizedBoxAnimation=Tween<double>(begin: 10,end: 0).animate(widget.animationController);

  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap(),

      child: Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0),),
          color: widget.isSelected ? Colors.transparent.withOpacity(0.3)
              :Colors.transparent,
        ),

        width: widthAnimation.value,

        margin: EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
        child: Row(
          children: <Widget>
          [
            Icon(widget.icon,
              color:widget.isSelected ? selectedColor : Colors.white,
              size: 35.0,),
            SizedBox(width: sizedBoxAnimation.value),
            (widthAnimation.value >= 220) ? Text(widget.title,style: widget.isSelected ? ListTileSelectedTextStyle : ListTileDefultTextStyle,): Container(),

          ],
        ),
      ),
    );
  }
}
