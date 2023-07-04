import 'package:flutter/material.dart';
import 'globals.dart';
import 'package:morphable_shape/morphable_shape.dart';

class PositionedBottomPopup extends StatelessWidget {
  const PositionedBottomPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double star_size = ss.height * .065;
    double star_padding = ss.height * .01;
    double star_icon_padding = ss.height * .01;

    return Positioned(
        bottom: 0,
        child: Container(
            height: star_size + (2 * (star_icon_padding + star_padding)),
            child: Stack(children: [
              Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  color: app_primary_color,
                  height: ss.height * .08,
                  width: ss.width,
                  child:
                  Stack(children:[
                      Container(
                      color: app_primary_color,
                      height: ss.height * .08,
                      width: ss.width,
                      child:
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get 10% for 1st ORDER",
                        style: TextStyle(
                            color: Colors.white, fontSize: ss.width * .035),
                      )
                    ],
                  )),
                Container(
                // color: app_primary_color,
                height: ss.height * .08,
                width: ss.width,
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                right: ss.height * .01),
                            child: Icon(
                              Icons.clear,
                              color: Colors.white,
                            ))
                      ],
                    ))
                  ]),
                )
              ]),
              Container(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: ss.width * .03),
                      child: ClipRRect(
                        // radius needs to be sum of inner component sizes / 2
                        // or sum of padding added symmetrically twice
                          borderRadius: BorderRadius.circular((star_size / 2) +
                              star_icon_padding +
                              star_padding),
                          child: Container(
                              color: Colors.white,
                              padding: EdgeInsets.all(star_icon_padding),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      (star_size / 2) + star_padding),
                                  child: Container(
                                      color: app_primary_color,
                                      padding: EdgeInsets.all(star_padding),
                                      child: Container(
                                          width: star_size,
                                          height: star_size,
                                          decoration: ShapeDecoration(
                                              color: Colors.red,
                                              shape: StarShapeBorder(
                                                  corners: 11,
                                                  inset: 38.toPercentLength,
                                                  cornerRadius: 1.toPXLength,
                                                  cornerStyle:
                                                      CornerStyle.rounded,
                                                  insetRadius: 5.toPXLength,
                                                  insetStyle:
                                                      CornerStyle.rounded)),
                                          child: Center(
                                              child: Text(
                                            "%",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: ss.width * .065),
                                          )))))))),
                ],
              )),
            ])));
  }
}
