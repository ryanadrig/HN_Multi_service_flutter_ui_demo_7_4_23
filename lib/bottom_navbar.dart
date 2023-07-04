import 'package:flutter/material.dart';
import 'globals.dart';

BottomNavigationBarItem bnb_item(
    String label, IconData icon, double width, double borderwidth) {
  return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: Colors.grey[500],
        size: ss.width * .06,
      ),
      activeIcon: Container(
          width: width,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: borderwidth, color: app_primary_color))),
          child: Icon(
            icon,
            color: Colors.teal,
            size: ss.width * .07,
          )),
      label: label);
}

class HHBottomNav extends StatefulWidget {
  const HHBottomNav({Key? key}) : super(key: key);

  @override
  State<HHBottomNav> createState() => _HHBottomNavState();
}

class _HHBottomNavState extends State<HHBottomNav> {
  int current_idx = 0;
  double bn_item_width = ss.width / 5;
  @override
  Widget build(BuildContext context) {
    double border_indicator_width = ss.width * .02;
    List<BottomNavigationBarItem> items = [
      bnb_item("Home", Icons.approval, bn_item_width, border_indicator_width),
      bnb_item("My Orders", Icons.shopping_basket_outlined, bn_item_width,
          border_indicator_width),
      bnb_item("Events", Icons.event_outlined, bn_item_width,
          border_indicator_width),
      bnb_item("My Account", Icons.person_outlined, bn_item_width,
          border_indicator_width),
    ];

    return BottomNavigationBar(
      items: items,
      currentIndex: current_idx,
      onTap: (val) {
        setState(() {
          current_idx = val;
        });
      },
    );
  }
}
