import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Medical Fitness",
                  style: TextStyle(
                      fontSize: 25,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                    size: 20, color: color.AppColor.homePageIcons),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  size: 20,
                  color: color.AppColor.homePageIcons,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.arrow_forward_ios,
                    size: 20, color: color.AppColor.homePageIcons),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Programok",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  "Részletek",
                  style: TextStyle(
                    fontSize: 20,
                    color: color.AppColor.homePageDetail,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_forward,
                    size: 20, color: color.AppColor.homePageIcons)
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80),
                    )))
          ],
        ),
      ),
    );
  }
}
