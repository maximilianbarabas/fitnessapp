import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "colors.dart" as color;

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                color.AppColor.gradientFirst.withOpacity(0.9),
                color.AppColor.gradientSecond
              ],
              begin: const FractionalOffset(0.0, 0.4),
              end: Alignment.topRight,
            )),
            child: Column(
              children: [
                Container(
                    padding:
                        const EdgeInsets.only(top: 70, left: 30, right: 30),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.arrow_back_ios,
                                size: 20,
                                color: color.AppColor.secondPageIconColor),
                            Expanded(child: Container()),
                            Icon(Icons.info_outline,
                                size: 20,
                                color: color.AppColor.secondPageIconColor)
                          ],
                        )
                      ],
                    ))
              ],
            )));
  }
}
