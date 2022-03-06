import 'package:beginning_app/models/navigationmodel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'collapsinglisttile.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  const CollapsingNavigationDrawer({Key? key}) : super(key: key);

  @override
  State<CollapsingNavigationDrawer> createState() => _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer> with SingleTickerProviderStateMixin{


  late AnimationController _animationController;
  late Animation<double> widthAnimation;
  double maxWidth=220.0;
  double minWidth =70.0;

  bool isCollapsed=false;
  int currentSelectedIndex=0;



  hexColor (String colorhexcode){
    String colornew = '0xff' + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 300),);
    widthAnimation=Tween<double>(begin: maxWidth,end: minWidth).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(animation: _animationController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context,widget)
  {
    return Container(
      width: widthAnimation.value,
      color: Color(hexColor("#264653")),
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(

          children:
          <Widget>[
            // CollapsingListTile(title: 'Techie', icon: Icons.person, animationController: _animationController,onTap: ,),
            //Divider(color: Colors.grey, height: 40.0,),
            //SizedBox(height: 70.0,),

            Expanded(

              child: ListView.builder(
                itemBuilder: (context , counter){
                  return CollapsingListTile(
                    onTap:()
                    {
                      // setState(() {
                      //  // WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
                      //     currentSelectedIndex = counter;
                      //
                      //   });

                      //});

                    },
                    isSelected :currentSelectedIndex == counter,

                    title: navigationItem[counter].title,
                    icon: navigationItem[counter].icon,
                    animationController:_animationController,

                  );

                },
                itemCount: navigationItem.length,
              ),
            ),

            InkWell(
              onTap: ()
              {
                setState(() {
                  isCollapsed=!isCollapsed;
                  isCollapsed ? _animationController.forward() : _animationController.reverse();

                });
              },
              child: AnimatedIcon
                (
                icon: AnimatedIcons.close_menu,
                progress: _animationController,
                color: Colors.white,
                size: 50.0,
              ),
            ),
            SizedBox(height: 50.0,),
          ],
        ),
      ),
    );

  }

}

