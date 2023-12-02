import 'controller/shipping_description_controller.dart';
import 'models/shipping_description_model.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/widgets/custom_elevated_button.dart';
import 'package:newdaysexpress/widgets/custom_text_form_field.dart';

class ShippingDescriptionPage extends StatelessWidget {
  ShippingDescriptionPage({Key? key})
      : super(
          key: key,
        );

  ShippingDescriptionController controller =
      Get.put(ShippingDescriptionController(ShippingDescriptionModel().obs));

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
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_lo_i_h_ng".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 3.v),
                    _buildEditText(),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "msg_m_t_chi_ti_t_h_ng".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ),
                    SizedBox(height: 4.v),
                    _buildEditText1(),
                    SizedBox(height: 27.v),
                    _buildSeventySeven(),
                    SizedBox(height: 31.v),
                    _buildSeventyEight(),
                    SizedBox(height: 39.v),
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
      width: 164.h,
      controller: controller.editTextController2,
    );
  }

  /// Section Widget
  Widget _buildEditText3() {
    return CustomTextFormField(
      width: 172.h,
      controller: controller.editTextController3,
    );
  }

  /// Section Widget
  Widget _buildSeventySeven() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_s_ki_n_h_ng".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 4.v),
              _buildEditText2(),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_gi_tr_vn".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              _buildEditText3(),
            ],
          ),
        ],
      ),
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
  Widget _buildEditText5() {
    return CustomTextFormField(
      width: 170.h,
      controller: controller.editTextController5,
      textInputAction: TextInputAction.done,
    );
  }

  /// Section Widget
  Widget _buildSeventyEight() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_tr_ng_l_ng_kg".tr,
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
                "msg_tr_ng_l_ng_th".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 3.v),
              _buildEditText5(),
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
      margin: EdgeInsets.only(
        left: 1.h,
        right: 5.h,
      ),
    );
  }
}
