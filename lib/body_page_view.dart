import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'globals.dart';

class HHBodyPageView extends StatefulWidget {
  const HHBodyPageView({Key? key}) : super(key: key);

  @override
  State<HHBodyPageView> createState() => _HHBodyPageViewState();
}

class _HHBodyPageViewState extends State<HHBodyPageView> {
  int active_index = 1;
  dynamic callbackFunction(int i, CarouselPageChangedReason cpcr) {
    print("page changed i " + i.toString());
    setState(() {
      active_index = i;
    });
  }

  List<Widget> items = [
    HHB_PVI(color: Colors.blue, idx: 0),
    HHB_PVI(color: Colors.green, idx: 1),
    HHB_PVI(color: Colors.purple, idx: 2),
    HHB_PVI(color: Colors.indigo, idx: 3),
    HHB_PVI(color: Colors.teal, idx: 4)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ss.height * .34,
        child: Column(children: [
          Container(
              height: ss.height * .3,
              // child: PageView(
              //   padEnds: true,
              child: CarouselSlider(
                  items: items,
                  options: CarouselOptions(
                    height: ss.width * .4,
                    // aspectRatio: .3,
                    padEnds: true,
                    viewportFraction: .75,
                    initialPage: 1,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 7),
                    autoPlayAnimationDuration: Duration(milliseconds: 1800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ))),
          AnimatedSmoothIndicator(
            activeIndex: active_index,
            count: items.length,
            effect: ExpandingDotsEffect(
                dotHeight: ss.width * .02,
                dotWidth: ss.width * .03,
                activeDotColor: app_primary_color),
          )
        ]));
    // );
  }
}

class HHB_PVI extends StatelessWidget {
  HHB_PVI({Key? key, this.color, this.idx}) : super(key: key);
  Color? color;
  int? idx;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(ss.width * .05),
        child: Container(
            color: color,
            child: idx == 1
                ? Image.asset(
                    "assets/halen_slider_img1.png",
                    fit: BoxFit.cover,
                  )
                : null));
  }
}
