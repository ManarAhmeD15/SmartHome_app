// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String tbakhUrl='https://drive.google.com/file/d/1eaxnWE2RF2uw9niiJsUAaKxGru2oJT3K/view?usp=sharing';
String ibrahimUrl='https://avatars.githubusercontent.com/u/87869566?v=4';
String manarUrl='https://avatars.githubusercontent.com/u/73136678?v=4';
String asmaaUrl='https://avatars.githubusercontent.com/u/101802362?v=4';
String seragUrl='https://t.co/TE5Hk0dRbw';
String hagerUrl='https://avatars.githubusercontent.com/u/61125543?v=4';


class ProgrammerScreen extends StatelessWidget{
  const ProgrammerScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.blueGrey[800],
        title: Center(
          child: Text('About',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30.0,
            color: Colors.white,
          ),),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListViewWidget(),
      ),


    );
  }
}

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  //get tiles => ;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: ListTile.divideTiles(
        context: context,
          color: Colors.amber,
          tiles:[
            ListTileWidget(urlStr: manarUrl, name: 'Ibrahim Samir El-Tbakh', email: 'eltabakh987@gmail.com'),
            ListTileWidget(urlStr: ibrahimUrl, name: 'Ibrahim Ahmed El-Badwy ', email: 'ha585115@gmail.com'),
            ListTileWidget(urlStr: manarUrl, name: 'Manar Ahmed Mohamed ', email: 'mnarahmed@gmail.com'),
            ListTileWidget(urlStr: asmaaUrl, name: 'Asmaa Ahmed Saeed', email: 'asmaa612ahmed@gmail.com'),
            ListTileWidget(urlStr: seragUrl, name: 'Ahmed Medhat Serag', email: 'aserag764@gmail.com'),
            ListTileWidget(urlStr: hagerUrl, name: 'Hager Mahmoud Maher ', email: 'hagermahmoud2468@gmail.com'),


          ]).toList(),

    );
  }
}




class ListTileWidget extends StatelessWidget {
  final String urlStr;
  final String name;
  final String email;

  ListTileWidget(
      {Key? key, required this.urlStr, required this.name, required this.email})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage(urlStr),

          ),
          title: Text(name,style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[800],),),
          subtitle: Text(email),




        ),

    );
  }


}


class BodyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(manarUrl),
        ),
        title: Text('Manar Ahmed', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color:Colors.blueGrey[600]),),
        subtitle: Text('mnarahmed@gmail.com'),
        dense: false,
      ),


    );
  }

}






