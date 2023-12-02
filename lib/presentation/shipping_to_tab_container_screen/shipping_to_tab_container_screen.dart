import 'controller/shipping_to_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_to_page/shipping_to_page.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_subtitle.dart';
import 'package:newdaysexpress/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ShippingToTabContainerScreen
    extends GetWidget<ShippingToTabContainerController> {
  const ShippingToTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildTabview(),
              SizedBox(
                height: 682.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    ShippingToPage(),
                    ShippingToPage(),
                    ShippingToPage(),
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 43.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 13.h,
          top: 2.v,
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_n_i_g_i".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return SizedBox(
      height: 46.v,
      width: 347.h,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.primaryContainer,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'ABeeZee',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.primaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'ABeeZee',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: theme.colorScheme.primary,
        tabs: [
          Tab(
            child: Text(
              "lbl_n_i_g_i2".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_n_i_nh_n".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_m_ta_l_ha_ng".tr,
            ),
          ),
        ],
      ),
    );
  }
}
