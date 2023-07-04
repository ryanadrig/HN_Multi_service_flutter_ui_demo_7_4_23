import 'package:flutter/material.dart';
import 'globals.dart';

class HHAppBar extends StatelessWidget with PreferredSizeWidget {
  HHAppBar({Key? key, this.appBarHeight}) : super(key: key);

  double? appBarHeight;
  get preferredSize => Size(appBarHeight!, appBarHeight!);

  String ab_welcome_text = "Welcome, Edward";
  String ab_subtitle_text = "Add Address";

  double AB_AvatarHeight = 0;
  double AB_WelcomeTextSize = 0;
  double AB_SubtitleTextSize = 0;

  @override
  Widget build(BuildContext context) {
    AB_AvatarHeight = appBarHeight! * .88;
    AB_WelcomeTextSize = appBarHeight! * .175;
    AB_SubtitleTextSize = appBarHeight! * .15;
    return Container(
        padding: EdgeInsets.only(bottom: ss.width * .02),
        color: app_primary_color,
        height: appBarHeight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              TitleAvatar(size: ss.width * .12),
            ]),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: ss.width * .04),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ab_welcome_text,
                          style: TextStyle(
                              fontSize: AB_WelcomeTextSize,
                              color: text_secondary_color),
                        ),
                        Row(children: [
                          Icon(Icons.location_on_outlined,
                              color: text_secondary_color),
                          Text(
                            ab_subtitle_text,
                            style: TextStyle(
                                fontSize: AB_SubtitleTextSize,
                                color: text_secondary_color),
                          ),
                        ])
                      ])),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                  child: Padding(
                      padding: EdgeInsets.only(
                          right: ss.width * .02, bottom: ss.width * .02),
                      child: Icon(Icons.shopping_cart_outlined,
                          size: ss.height * .045, color: text_secondary_color)))
            ])
          ],
        ));
  }
}

class TitleAvatar extends StatelessWidget {
  TitleAvatar({Key? key, required this.size}) : super(key: key);

  double size;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: ss.width * .02),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(size / 2),
          child: Container(
              height: size,
              width: size,
              child: Image.asset(
                "assets/profileImage.png",
                fit: BoxFit.contain,
              )),
        ));
  }
}
