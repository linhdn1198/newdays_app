import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_description_page/models/shipping_description_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingDescriptionPage.
///
/// This class manages the state of the ShippingDescriptionPage, including the
/// current shippingDescriptionModelObj
class ShippingDescriptionController extends GetxController {
  ShippingDescriptionController(this.shippingDescriptionModelObj);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController editTextController5 = TextEditingController();

  Rx<ShippingDescriptionModel> shippingDescriptionModelObj;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
    editTextController4.dispose();
    editTextController5.dispose();
  }
}
