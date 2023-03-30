import 'dart:core';

import 'dart:core';

import 'package:flutter/material.dart';

import 'package:nudge_task/Widgets/widgets.dart';
import 'package:provider/provider.dart';

class PopUpandNavigation {
  void showPopupBanner(BuildContext context, double width, Widget banner) {
    // context.read<Controller>().toggleBanner();
    showDialog(
      context: context,
      barrierColor: Color.fromARGB(255, 48, 48, 48).withOpacity(0.5),
      builder: (BuildContext context) {
        return banner;
      },
    );
  }

  void goToNewPage(BuildContext context, Widget nextPage) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => nextPage),
    );
  }
}
