import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 57.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgGroup,
                          height: 53.v,
                          width: 99.h),
                      SizedBox(height: 2.v),
                      Text("lbl_newdays2".tr,
                          style: theme.textTheme.displayMedium)
                    ]))));
  }
}
