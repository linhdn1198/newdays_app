import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_from_page/models/shipping_from_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingFromPage.
///
/// This class manages the state of the ShippingFromPage, including the
/// current shippingFromModelObj
class ShippingFromController extends GetxController {
  ShippingFromController(this.shippingFromModelObj);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController5 = TextEditingController();

  TextEditingController editTextController6 = TextEditingController();

  Rx<ShippingFromModel> shippingFromModelObj;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
    editTextController4.dispose();
    emailController.dispose();
    editTextController5.dispose();
    editTextController6.dispose();
  }
}
