import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/shipping_note_screen/models/shipping_note_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ShippingNoteScreen.
///
/// This class manages the state of the ShippingNoteScreen, including the
/// current shippingNoteModelObj
class ShippingNoteController extends GetxController {
  TextEditingController tabDisableController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  TextEditingController editTextController2 = TextEditingController();

  TextEditingController editTextController3 = TextEditingController();

  Rx<ShippingNoteModel> shippingNoteModelObj = ShippingNoteModel().obs;

  @override
  void onClose() {
    super.onClose();
    tabDisableController.dispose();
    editTextController.dispose();
    editTextController1.dispose();
    editTextController2.dispose();
    editTextController3.dispose();
  }
}
