// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/app_fonts_constants.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';
import 'package:laundry_app/features/driver/auth/presentation/widgets/image_widget.dart';

class HomeDriverScreen extends StatelessWidget {
  const HomeDriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: ColorConstants.backGroundAppColor,
        border: const Border(),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: GestureDetector(
            onTap: () => context.push(RouterConstants.earningScreen),
            child: Image.asset(
              ImageConstants.earningsIcon,
              filterQuality: FilterQuality.high,
            ),
          ),
        ),
        leading: const Text(
          "Today's Order",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: TextConstants.openSans),
        ),
      ),
      child: PageView.builder(
          itemCount: 2,
          reverse: false,
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: context.screenWidth * 0.9,
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Wave 1/2",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppFonts.mediumFontSize,
                                      fontFamily: TextConstants.openSans),
                                ),
                                Text(
                                  "(7 orders)",
                                  style: TextStyle(
                                      fontSize: AppFonts.mediumFontSize,
                                      fontFamily: TextConstants.openSans),
                                ),
                                Text(
                                  "6PM - 9PM",
                                  style: TextStyle(
                                      fontSize: AppFonts.mediumFontSize,
                                      fontFamily: TextConstants.openSans),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: context.screenHeight * 0.07,
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 4,
                                shrinkWrap: true,
                                itemBuilder: ((context, index) {
                                  return Column(
                                    children: [
                                      dailyOrder(context),
                                    ],
                                  );
                                })),
                            SizedBox(
                              height: context.height * 0.05,
                            ),
                            if (index == 0)
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: ImageWidget(
                                      url: "assets/icons/arrow_next.svg",
                                      width: context.width * 0.07,
                                      height: context.height * 0.07),
                                ),
                              ),
                            if (index == 1)
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: ImageWidget(
                                      url: "assets/icons/arrow_back.svg",
                                      width: context.width * 0.07,
                                      height: context.height * 0.07),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          })),
    );
  }

  Widget dailyOrder(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.purple,
          height: 0,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  SvgPicture.asset(
                    ImageConstants.location,
                  ),
                  const Text(
                    "Start",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppFonts.xSmallFontSize),
                  )
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.135,
              width: context.width * 0.05,
              child: const VerticalDivider(),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Text("1"),
                    SizedBox(
                      height: context.height * 0.03,
                      width: context.width * 0.05,
                      child: const VerticalDivider(
                        color: Colors.black,
                        thickness: 1.5,
                      ),
                    ),
                    const Text(
                      "Address: Building 31, Apartment 3",
                      style: TextStyle(fontSize: AppFonts.mediumFontSize),
                    )
                  ],
                ),
                SizedBox(
                  height: context.height * 0.01,
                ),
                Row(
                  children: [
                    const Column(
                      children: [
                        Text("3 x Thoab"),
                        Text("2 x Thoab"),
                        Text("1 x Thoab"),
                        Text("1 x Thoab"),
                      ],
                    ),
                    SizedBox(
                      width: context.width * 0.25,
                    ),
                    Column(
                      children: [
                        Image.asset(
                          ImageConstants.checkCircleIcon,
                        ),
                        const Text(
                          "Done",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppFonts.xSmallFontSize),
                        )
                      ],
                    ),
                    SizedBox(
                      width: context.width * 0.05,
                    ),
                    Column(
                      children: [
                        SvgPicture.asset(
                          ImageConstants.phoneBold,
                        ),
                        const Text(
                          "Start",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppFonts.xSmallFontSize),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const Divider(
          color: Colors.purple,
          height: 0,
        ),
      ],
    );
  }
}
