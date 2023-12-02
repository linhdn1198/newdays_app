import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_to_page/models/shipping_to_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingToPage.
///
/// This class manages the state of the ShippingToPage, including the
/// current shippingToModelObj
class ShippingToController extends GetxController {
  ShippingToController(this.shippingToModelObj);

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  TextEditingController editTextController4 = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController editTextController5 = TextEditingController();

  TextEditingController editTextController6 = TextEditingController();

  Rx<ShippingToModel> shippingToModelObj;

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
