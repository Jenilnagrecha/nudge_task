import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nudge_task/screens/contact.dart';

import 'package:nudge_task/popupandnavigation.dart';
import 'package:nudge_task/Widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PopUpandNavigation popnav = PopUpandNavigation();
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 216, 216),
      body: Center(
        child: GestureDetector(
          onTap: () => popnav.goToNewPage(context, const Contact()),
          child: Tile(width: width),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => popnav.showPopupBanner(
          context,
          width,
          PopupBanner(width: width),
        ),
      ),
    );
  }
}
