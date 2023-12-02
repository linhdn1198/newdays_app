import 'controller/billing_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_page/billing_page.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_subtitle.dart';
import 'package:newdaysexpress/widgets/app_bar/custom_app_bar.dart';
import 'package:newdaysexpress/widgets/custom_bottom_bar.dart';
import 'package:newdaysexpress/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class BillingResultScreen extends GetWidget<BillingResultController> {
  const BillingResultScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 13.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: _buildFrame(
                  label: "msg_d_ch_v_v_n_chuy_n".tr,
                  vNCounter: "lbl_new_days".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: _buildFrame(
                  label: "lbl_c_c_ph".tr,
                  vNCounter: "lbl_0_vn".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: _buildFrame(
                  label: "msg_th_i_gian_v_n_chuy_n".tr,
                  vNCounter: "lbl".tr,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: _buildFrame(
                  label: "lbl_l_i_ch_d_ch_v".tr,
                  vNCounter: "msg_m_c_c_c_ph_ch_a".tr,
                ),
              ),
              Spacer(),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_g_i_ngay2".tr,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 46.v,
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "msg_ba_ng_gia_c_c".tr,
        margin: EdgeInsets.only(left: 95.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String label,
    required String vNCounter,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 12.v,
        bottom: 11.v,
      ),
      decoration: AppDecoration.outlineGray3001,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              label,
              style: CustomTextStyles.bodyMediumBluegray900_2.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              vNCounter,
              style: CustomTextStyles.bodyMediumBluegray900.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Nhng:
        return "/";
      case BottomBarEnum.Traccgihng:
        return AppRoutes.billingPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.billingPage:
        return BillingPage();
      default:
        return DefaultWidget();
    }
  }
}
