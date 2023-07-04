import 'package:flutter/material.dart';
import 'globals.dart';

class HHBodyServices extends StatefulWidget {
  const HHBodyServices({Key? key}) : super(key: key);

  @override
  State<HHBodyServices> createState() => _HHBodyServicesState();
}

class _HHBodyServicesState extends State<HHBodyServices> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ss.height * .54,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How can we serve you today?",
                style: TextStyle(fontSize: ss.height * .02),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ServicesRowItem(
                name: "RIDE", image_path: "assets/ride_service_graphic.png"),
            ServicesRowItem(
                name: "EAT", image_path: "assets/eat_service_graphic.png")
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            ServicesRowItem(
                name: "GROCERY",
                image_path: "assets/grocery_service_graphic.png"),
            ServicesRowItem(
                name: "SHOPPING", image_path: "assets/shop_service_graphic.png")
          ]),
        ],
      ),
    );
  }
}

class ServicesRowItem extends StatelessWidget {
  ServicesRowItem({Key? key, required this.name, required this.image_path})
      : super(key: key);

  String name;
  String image_path;
  @override
  Widget build(BuildContext context) {
    double service_item_size = ss.height * .22;
    return ClipRRect(
        borderRadius: BorderRadius.circular(service_item_size * .1),
        child: Container(
            width: service_item_size,
            height: service_item_size,
            child: Image.asset(
              image_path,
              fit: BoxFit.contain,
            )));
  }
}
