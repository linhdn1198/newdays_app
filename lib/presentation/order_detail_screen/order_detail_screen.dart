import 'controller/order_detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_page/billing_page.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_title.dart';
import 'package:newdaysexpress/widgets/app_bar/custom_app_bar.dart';
import 'package:newdaysexpress/widgets/custom_bottom_bar.dart';

class OrderDetailScreen extends GetWidget<OrderDetailController> {
  const OrderDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildSeventeen(),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.h, vertical: 16.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: Column(children: [
                        SizedBox(height: 2.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Obx(() => Text(
                                controller
                                    .orderDetailModelObj.value.title.value,
                                style:
                                    CustomTextStyles.bodyMediumBluegray900_2))),
                        SizedBox(height: 10.v),
                        Padding(
                            padding: EdgeInsets.only(right: 1.h),
                            child: _buildFrame1(
                                label: "lbl_c_ng_ty_g_i".tr,
                                label1: "msg_express_logistics".tr)),
                        _buildFrame(
                            label: "lbl_g_i_t".tr,
                            label1: "msg_107_nguy_n_phong".tr),
                        _buildFrame(
                            label: "msg_c_c_ph_v_n_chuy_n".tr,
                            label1: "lbl_44_880".tr),
                        SizedBox(height: 34.v),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "lbl_ng_y_t_o".tr,
                                label1: "msg_28_09_2023_10_44_34".tr)),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "lbl_c_t_o_b_i".tr,
                                label1: "msg_nguy_n_ng_c_thanh".tr)),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "lbl_g_i_n2".tr,
                                label1: "lbl_nguyen".tr)),
                        _buildFrame(
                            label: "msg_m_t_chi_ti_t_n".tr,
                            label1: "lbl_h_ng_d_v".tr),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "lbl_a_ch_n".tr,
                                label1: "msg_107_nguy_n_phong2".tr)),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "msg_h_nh_th_c_v_n_chuy_n".tr,
                                label1: "lbl_express".tr)),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "lbl_ng_y_g_i".tr,
                                label1: "lbl_ang_ch".tr)),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "lbl_lo_i_h_ng".tr,
                                label1: "msg_h_ng_h_a_non_doc".tr)),
                        Padding(
                            padding: EdgeInsets.only(right: 2.h),
                            child: _buildFrame1(
                                label: "msg_t_nh_tr_ng_hi_n".tr,
                                label1: "lbl_kh_i_t_o".tr))
                      ]))
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildSeventeen() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.v),
        decoration: AppDecoration.fillOnPrimary,
        child: CustomAppBar(
            height: 30.v,
            leadingWidth: 42.h,
            leading: AppbarLeadingImage(
                imagePath: ImageConstant.imgArrowLeftWhiteA700,
                margin: EdgeInsets.only(left: 12.h),
                onTap: () {
                  onBackPressed();
                }),
            centerTitle: true,
            title: AppbarTitle(text: "msg_chi_ti_t_n_h_ng".tr)));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Common widget
  Widget _buildFrame({
    required String label,
    required String label1,
  }) {
    return SizedBox(
        height: 44.v,
        width: 343.h,
        child: Stack(alignment: Alignment.centerRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
                  decoration: AppDecoration.outlineGray3001,
                  child: Text(label,
                      style: CustomTextStyles.bodyMediumBluegray900_2
                          .copyWith(color: appTheme.blueGray900)))),
          Align(
              alignment: Alignment.centerRight,
              child: Text(label1,
                  style: CustomTextStyles.bodyMediumBluegray900
                      .copyWith(color: appTheme.blueGray900)))
        ]));
  }

  /// Common widget
  Widget _buildFrame1({
    required String label,
    required String label1,
  }) {
    return Container(
        padding: EdgeInsets.only(top: 12.v, bottom: 11.v),
        decoration: AppDecoration.outlineGray3001,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(label,
                  style: CustomTextStyles.bodyMediumBluegray900_2
                      .copyWith(color: appTheme.blueGray900))),
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(label1,
                  style: CustomTextStyles.bodyMediumBluegray900
                      .copyWith(color: appTheme.blueGray900)))
        ]));
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

  /// Navigates to the previous screen.
  onBackPressed() {
    Get.back();
  }
}
