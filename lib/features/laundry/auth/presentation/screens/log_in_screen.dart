import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/color_constants.dart';
import 'package:laundry_app/core/constants/image_constant.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/core/constants/text_constants.dart';
import 'package:laundry_app/core/extensions/screen_size_extension.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: ColorConstants.backGroundAppColor,
      child: SafeArea(
        child: Stack(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Text(
                TextConstants.loginAppBarText,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            Center(
              child: Container(
                height: context.screenHeight > 600 ? 206 : 206,
                width: context.screenWidth > 600 ? 450 : 353,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: CupertinoTextField.borderless(
                        placeholderStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black),
                        prefix: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Image.asset(
                            ImageConstants.phoneIcon,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        placeholder: 'Phone Number',
                      ),
                    ),
                    SizedBox(
                      height: context.screenHeight > 600 ? 40 : 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: CupertinoTextField.borderless(
                        prefix: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Image.asset(
                            ImageConstants.lockIcon,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                        placeholderStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: CupertinoColors.black),
                        placeholder: 'Password',
                        suffix: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Image.asset(
                            ImageConstants.eyeIcon,
                            filterQuality: FilterQuality.high,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 100,
              child: Center(
                child: SizedBox(
                  width: context.screenWidth > 600 ? 350 : 300,
                  child: CupertinoButton(
                    color: ColorConstants.purpleAppColor, // Background color
                    borderRadius: BorderRadius.circular(25.0), // Border radius

                    onPressed: () {
                      context.push(RouterConstants.driverHome);
                    },
                    child: Text(
                      'Driver Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: Center(
                child: SizedBox(
                  width: context.screenWidth > 600 ? 350 : 300,
                  child: CupertinoButton(
                    color: ColorConstants.purpleAppColor, // Background color
                    borderRadius: BorderRadius.circular(25.0), // Border radius

                    onPressed: () {
                      context.push(RouterConstants.logInDriverScreen);
                    },
                    child: Text(
                      'Log in',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
