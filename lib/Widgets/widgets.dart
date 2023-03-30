import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class PopupBanner extends StatelessWidget {
  const PopupBanner({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300.0,
        width: width * 0.8,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 62, 172, 255),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class Blur extends StatelessWidget {
  const Blur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 79, 79, 79).withOpacity(0.5),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: width * 0.9,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 49, 49),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 5,
          ),
        ],
      ),
    );
  }
}
