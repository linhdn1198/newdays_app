import 'controller/shipping_note_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_page/billing_page.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_subtitle.dart';
import 'package:newdaysexpress/widgets/app_bar/custom_app_bar.dart';
import 'package:newdaysexpress/widgets/custom_bottom_bar.dart';
import 'package:newdaysexpress/widgets/custom_elevated_button.dart';
import 'package:newdaysexpress/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ShippingNoteScreen extends GetWidget<ShippingNoteController> {
  const ShippingNoteScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              _buildTabDisable(),
              SizedBox(height: 7.v),
              _buildNinetyFive(),
              SizedBox(height: 8.v),
              _buildNinetySix(),
              SizedBox(height: 18.v),
              _buildFrame(),
              Spacer(),
              SizedBox(height: 32.v),
              _buildGiHngNgay(),
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
      height: 50.v,
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 8.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_th_ng_tin".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabDisable() {
    return CustomTextFormField(
      width: 157.h,
      controller: controller.tabDisableController,
      hintText: "msg_di_ch_vu_th_i".tr,
      alignment: Alignment.centerLeft,
      contentPadding: EdgeInsets.symmetric(horizontal: 2.h),
      borderDecoration: TextFormFieldStyleHelper.underLinePrimary,
      filled: false,
    );
  }

  /// Section Widget
  Widget _buildEditText() {
    return CustomTextFormField(
      width: 166.h,
      controller: controller.editTextController,
    );
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
      width: 166.h,
      controller: controller.editTextController1,
    );
  }

  /// Section Widget
  Widget _buildNinetyFive() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_h_nh_th_c_chuy_n".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 3.v),
                  _buildEditText(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_t_n_d_ch_v".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 3.v),
                  _buildEditText1(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
      width: 164.h,
      controller: controller.editTextController2,
    );
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
      width: 164.h,
      controller: controller.editTextController3,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildNinetySix() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                right: 11.h,
                bottom: 1.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_th_i_gian_h_n_n".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 4.v),
                  _buildEditText2(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_ti_n_thu_h_vn".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(height: 5.v),
                  _buildEditText3(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Container(
      margin: EdgeInsets.only(
        left: 3.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 21.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_c_c_ph".tr,
              style: CustomTextStyles.bodyMediumBluegray90015,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_44_880_vn".tr,
              style: CustomTextStyles.bodyMediumGray700,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGiHngNgay() {
    return CustomElevatedButton(
      text: "lbl_g_i_h_ng_ngay".tr,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 10.h,
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
