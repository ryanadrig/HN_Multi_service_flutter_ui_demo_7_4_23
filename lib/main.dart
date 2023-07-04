import 'package:flutter/material.dart';
import 'globals.dart';
import 'body_page_view.dart';
import 'home_appbar.dart';
import 'home_service_grid.dart';
import 'home_tips_row.dart';
import 'bottom_navbar.dart';
import 'home_bottom_banner_popup.dart';

void main() {
  runApp(HalenHome());
}

class HalenHome extends StatelessWidget {
  HalenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halen Home Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const HalenHomePage(),
    );
  }
}

class HalenHomePage extends StatefulWidget {
  const HalenHomePage({Key? key}) : super(key: key);

  @override
  State<HalenHomePage> createState() => _HalenHomePageState();
}

class _HalenHomePageState extends State<HalenHomePage> {
  @override
  Widget build(BuildContext context) {
    ss = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HHAppBar(
        appBarHeight: ss.height * .13,
      ),
      body: Container(
          height: ss.height - kBottomNavigationBarHeight - kToolbarHeight,
          child: Stack(children: [
                      ListView(
                        children: [HHBodyPageView(),
                                    HHBodyServices(),
                                    HHBodyTips()]),
                PositionedBottomPopup()
          ])),
      bottomNavigationBar: HHBottomNav(),
    );
  }
}
