import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationModel {

  String title;
  IconData icon;

  NavigationModel({required this.title,required this.icon});

}

List<NavigationModel> navigationItem =[
  NavigationModel(title: 'Home', icon: Icons.home),
  NavigationModel(title: 'Profile', icon: Icons.person),
  NavigationModel(title: 'Inside Control', icon: Icons.open_in_new),
  NavigationModel(title: 'Outside Control', icon: Icons.south_west_outlined),
  //NavigationModel(title: 'Voice Control', icon: Icons.settings_voice),
  NavigationModel(title: 'Remote Control', icon: Icons.settings_remote),
  NavigationModel(title: 'Timing', icon: Icons.watch_later_outlined),
  NavigationModel(title: 'About', icon: Icons.info_outline),


];