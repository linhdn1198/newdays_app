import 'controller/billing_controller.dart';
import 'models/billing_model.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/widgets/custom_checkbox_button.dart';
import 'package:newdaysexpress/widgets/custom_drop_down.dart';
import 'package:newdaysexpress/widgets/custom_elevated_button.dart';
import 'package:newdaysexpress/widgets/custom_text_form_field.dart';

class BillingPage extends StatelessWidget {
  BillingPage({Key? key})
      : super(
          key: key,
        );

  BillingController controller = Get.put(BillingController(BillingModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                _buildFrame1(),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 1.h,
                  ),
                  child: _buildFrame(
                    loIHNg: "lbl_khu_v_c".tr,
                    choNLoaIHaNg: "msg_cho_n_qu_n_huy_n".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 5.h,
                    right: 1.h,
                  ),
                  child: _buildFrame(
                    loIHNg: "lbl_lo_i_h_ng".tr,
                    choNLoaIHaNg: "msg_cho_n_loa_i_ha_ng".tr,
                  ),
                ),
                SizedBox(height: 14.v),
                _buildFrame4(),
                _buildFrame5(),
                _buildFrame6(),
                SizedBox(height: 2.v),
                _buildFrame7(),
                SizedBox(height: 23.v),
                _buildEightyThree(),
                SizedBox(height: 34.v),
                _buildTnhCc(),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Container(
      margin: EdgeInsets.only(
        left: 5.h,
        right: 1.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_g_i_t".tr,
              style: CustomTextStyles.bodyMediumBluegray90015,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomDropDown(
              width: 110.h,
              icon: Container(
                margin: EdgeInsets.fromLTRB(19.h, 12.v, 18.h, 12.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowdown,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
              hintText: "msg_cho_n_ti_nh_tha_nh".tr,
              items: controller.billingModelObj.value.dropdownItemList!.value,
              contentPadding: EdgeInsets.only(left: 18.h),
              onChanged: (value) {
                controller.onSelected(value);
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame4() {
    return Container(
      margin: EdgeInsets.only(
        left: 5.h,
        right: 1.h,
      ),
      padding: EdgeInsets.only(
        top: 9.v,
        bottom: 8.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 11.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_g_i_n".tr,
              style: CustomTextStyles.bodyMediumBluegray90015,
            ),
          ),
          CustomDropDown(
            width: 115.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(19.h, 12.v, 20.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            hintText: "msg_cho_n_ti_nh_tha_nh".tr,
            items: controller.billingModelObj.value.dropdownItemList1!.value,
            contentPadding: EdgeInsets.only(left: 20.h),
            onChanged: (value) {
              controller.onSelected1(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame5() {
    return Container(
      margin: EdgeInsets.only(
        left: 5.h,
        right: 1.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: AppDecoration.outlineGray,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 15.v,
            ),
            child: Text(
              "lbl_khu_v_c".tr,
              style: CustomTextStyles.bodyMediumBluegray90015,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 47.v,
                  width: 110.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: CustomDropDown(
                          width: 110.h,
                          icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 11.v, 18.h, 11.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgArrowdown,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                          ),
                          alignment: Alignment.topCenter,
                          items: controller
                              .billingModelObj.value.dropdownItemList2!.value,
                          onChanged: (value) {
                            controller.onSelected2(value);
                          },
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 35.h,
                          margin: EdgeInsets.only(left: 18.h),
                          child: Text(
                            "msg_cho_n_qu_n_huy_n".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              height: 1.25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 115.h,
                  child: Divider(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame6() {
    return Container(
      margin: EdgeInsets.only(
        left: 5.h,
        right: 1.h,
      ),
      padding: EdgeInsets.only(
        top: 9.v,
        bottom: 8.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 14.v,
              bottom: 13.v,
            ),
            child: Text(
              "msg_hi_nh_th_c_chuy_n".tr,
              style: CustomTextStyles.bodyMediumBluegray90015,
            ),
          ),
          CustomDropDown(
            width: 115.h,
            icon: Container(
              margin: EdgeInsets.fromLTRB(24.h, 12.v, 20.h, 12.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowdown,
                height: 20.adaptSize,
                width: 20.adaptSize,
              ),
            ),
            hintText: "msg_cho_n_hi_nh_th_c".tr,
            items: controller.billingModelObj.value.dropdownItemList3!.value,
            contentPadding: EdgeInsets.only(left: 20.h),
            onChanged: (value) {
              controller.onSelected3(value);
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      width: 86.h,
      controller: controller.emailController,
      hintText: "lbl_1".tr,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame7() {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                Text(
                  "lbl_s_ki_n_ha_ng".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 4.v),
                _buildEmail(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Obx(
              () => CustomCheckboxButton(
                text: "msg_t_t_c_c_c_ki_n".tr,
                isExpandedText: true,
                value: controller.iconcheckboxcheckedsymbolic.value,
                onChange: (value) {
                  controller.iconcheckboxcheckedsymbolic.value = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1() {
    return CustomTextFormField(
      width: 87.h,
      controller: controller.emailController1,
      hintText: "lbl_1".tr,
    );
  }

  /// Section Widget
  Widget _buildEmail2() {
    return CustomTextFormField(
      width: 71.h,
      controller: controller.emailController2,
      hintText: "lbl_1".tr,
    );
  }

  /// Section Widget
  Widget _buildEmail3() {
    return CustomTextFormField(
      width: 71.h,
      controller: controller.emailController3,
      hintText: "lbl_1".tr,
    );
  }

  /// Section Widget
  Widget _buildEmail4() {
    return CustomTextFormField(
      width: 71.h,
      controller: controller.emailController4,
      hintText: "lbl_1".tr,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildEightyThree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text(
              "lbl_c_n_n_ng_kg".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 3.v),
            _buildEmail1(),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            bottom: 1.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_d_i_cm".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              _buildEmail2(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            bottom: 1.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_r_ng_cm".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              _buildEmail3(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            bottom: 1.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_cao_cm".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              _buildEmail4(),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTnhCc() {
    return CustomElevatedButton(
      text: "lbl_t_nh_c_c".tr,
    );
  }

  /// Common widget
  Widget _buildFrame({
    required String loIHNg,
    required String choNLoaIHaNg,
  }) {
    return Container(
      padding: EdgeInsets.only(
        top: 7.v,
        bottom: 6.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 14.v,
            ),
            child: Text(
              loIHNg,
              style: CustomTextStyles.bodyMediumBluegray90015.copyWith(
                color: appTheme.blueGray900,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 47.v,
                  width: 110.h,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 42.v,
                          width: 110.h,
                          margin: EdgeInsets.only(top: 1.v),
                          padding: EdgeInsets.symmetric(
                            horizontal: 18.h,
                            vertical: 11.v,
                          ),
                          decoration: AppDecoration.outlineOnError.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdown,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.centerRight,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 29.h,
                          margin: EdgeInsets.only(left: 18.h),
                          child: Text(
                            choNLoaIHaNg,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.bodySmall!.copyWith(
                              color: appTheme.blueGray90001,
                              height: 1.25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                SizedBox(
                  width: 115.h,
                  child: Divider(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
