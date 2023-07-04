import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'globals.dart';

class HHBodyTips extends StatefulWidget {
  const HHBodyTips({Key? key}) : super(key: key);

  @override
  State<HHBodyTips> createState() => _HHBodyTipsState();
}

class _HHBodyTipsState extends State<HHBodyTips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ss.height * .35,
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(
                    left: ss.width * .04, bottom: ss.width * .02),
                child: Text(
                  "Tips From Halen",
                  style: TextStyle(fontSize: ss.height * .02),
                )),
          ]),
          Container(
              height: ss.height * .3,
              child: CarouselSlider(
                items: [
                  TipsPVItem(),
                  TipsPVItem(),
                ],
                options: CarouselOptions(
                  height: ss.width * .4,
                  // aspectRatio: .3,
                  padEnds: true,
                  viewportFraction: .7,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 7),
                  autoPlayAnimationDuration: Duration(milliseconds: 1800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ))
        ],
      ),
    );
  }
}

// PageView Items to use in carousel
class TipsPVItem extends StatelessWidget {
  const TipsPVItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: ss.width * .8,
        child: Column(children: [
          Container(
              width: ss.width * .8,
              child: Image.asset("assets/halen_tips_card_img1.png",
                  fit: BoxFit.cover)),
          Text("Go to RIDE", style: TextStyle(fontSize: ss.height * .0175)),
          Text("Take trip with us and get 10% discount ",
              style: TextStyle(fontSize: ss.height * .0145))
        ]));
  }
}
