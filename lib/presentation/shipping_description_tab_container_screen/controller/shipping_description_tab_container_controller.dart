import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_description_tab_container_screen/models/shipping_description_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingDescriptionTabContainerScreen.
///
/// This class manages the state of the ShippingDescriptionTabContainerScreen, including the
/// current shippingDescriptionTabContainerModelObj
class ShippingDescriptionTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ShippingDescriptionTabContainerModel>
      shippingDescriptionTabContainerModelObj =
      ShippingDescriptionTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
