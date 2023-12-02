import 'controller/shipping_from_controller.dart';
import 'models/shipping_from_model.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/widgets/custom_elevated_button.dart';
import 'package:newdaysexpress/widgets/custom_text_form_field.dart';

class ShippingFromPage extends StatelessWidget {
  ShippingFromPage({Key? key})
      : super(
          key: key,
        );

  ShippingFromController controller =
      Get.put(ShippingFromController(ShippingFromModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_ng_i_g_i".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    _buildEditText(),
                    SizedBox(height: 23.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_a_ch_1".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildEditText1(),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_a_ch_2".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildEditText2(),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_t_n_li_n_h".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    _buildEditText3(),
                    SizedBox(height: 9.v),
                    _buildEightyEight(),
                    SizedBox(height: 18.v),
                    _buildEightyNine(),
                    SizedBox(height: 51.v),
                    _buildTipTheo(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText() {
    return CustomTextFormField(
      controller: controller.editTextController,
    );
  }

  /// Section Widget
  Widget _buildEditText1() {
    return CustomTextFormField(
      controller: controller.editTextController1,
    );
  }

  /// Section Widget
  Widget _buildEditText2() {
    return CustomTextFormField(
      controller: controller.editTextController2,
    );
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
      controller: controller.editTextController3,
    );
  }

  /// Section Widget
  Widget _buildEditText4() {
    return CustomTextFormField(
      width: 164.h,
      controller: controller.editTextController4,
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      width: 172.h,
      controller: controller.emailController,
    );
  }

  /// Section Widget
  Widget _buildEightyEight() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_i_n_tho_i".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 3.v),
            _buildEditText4(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_email".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 4.v),
            _buildEmail(),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEditText5() {
    return CustomTextFormField(
      width: 164.h,
      controller: controller.editTextController5,
    );
  }

  /// Section Widget
  Widget _buildEditText6() {
    return CustomTextFormField(
      width: 170.h,
      controller: controller.editTextController6,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildEightyNine() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_qu_c_gia".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              _buildEditText5(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_t_nh_tp".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              _buildEditText6(),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTipTheo() {
    return CustomElevatedButton(
      text: "lbl_ti_p_theo".tr,
    );
  }
}
