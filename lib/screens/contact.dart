import 'package:flutter/material.dart';
import 'package:nudge_task/Widgets/widgets.dart';
import 'package:nudge_task/popupandnavigation.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  PopUpandNavigation popnav2 = PopUpandNavigation();
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 84, 84),
      body: Center(
        child: GestureDetector(
          onTap: () => popnav2.showPopupBanner(
            context,
            width,
            PopupBanner(width: width),
          ),
          child: Text('New Page!'),
        ),
      ),
    );
  }
}
