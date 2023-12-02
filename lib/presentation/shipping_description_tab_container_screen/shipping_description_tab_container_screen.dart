import 'controller/shipping_description_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_page/billing_page.dart';
import 'package:newdaysexpress/presentation/shipping_description_page/shipping_description_page.dart';
import 'package:newdaysexpress/presentation/shipping_from_page/shipping_from_page.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_leading_image.dart';
import 'package:newdaysexpress/widgets/app_bar/appbar_subtitle.dart';
import 'package:newdaysexpress/widgets/app_bar/custom_app_bar.dart';
import 'package:newdaysexpress/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ShippingDescriptionTabContainerScreen
    extends GetWidget<ShippingDescriptionTabContainerController> {
  const ShippingDescriptionTabContainerScreen({Key? key})
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
                height: 584.v,
                child: TabBarView(
                  controller: controller.tabviewController,
                  children: [
                    ShippingFromPage(),
                    ShippingFromPage(),
                    ShippingDescriptionPage(),
                  ],
                ),
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
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 2.v,
          bottom: 2.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_th_ng_tin".tr,
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
              "lbl_n_i_nh_n2".tr,
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
