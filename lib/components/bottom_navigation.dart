import 'package:flutter/material.dart';

Widget bottomNavigationBar() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(color: Color(0xFFEFF5FB), boxShadow: [
        BoxShadow(
            blurRadius: 10,
            offset: const Offset(0, -3),
            color: Colors.black.withOpacity(0.25))
      ]),
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(iconData: Icons.home_filled, active: true),
          buildNavIcon(iconData: Icons.search, active: false),
          buildNavIcon(iconData: Icons.shopping_basket, active: false),
          buildNavIcon(iconData: Icons.person, active: false),
        ],
      ),
    ),
  );
}

Widget buildNavIcon({@required IconData? iconData, @required bool? active}) {
  return Icon(
    iconData,
    size: 20.0,
    color: Color(active! ? 0xFF0001FC : 0xFF0A1034),
  );
}
