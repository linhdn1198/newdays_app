import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_to_tab_container_screen/models/shipping_to_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingToTabContainerScreen.
///
/// This class manages the state of the ShippingToTabContainerScreen, including the
/// current shippingToTabContainerModelObj
class ShippingToTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ShippingToTabContainerModel> shippingToTabContainerModelObj =
      ShippingToTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
