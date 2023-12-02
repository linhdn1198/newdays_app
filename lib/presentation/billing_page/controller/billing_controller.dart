import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_page/models/billing_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BillingPage.
///
/// This class manages the state of the BillingPage, including the
/// current billingModelObj
class BillingController extends GetxController {
  BillingController(this.billingModelObj);

  TextEditingController emailController = TextEditingController();

  TextEditingController emailController1 = TextEditingController();

  TextEditingController emailController2 = TextEditingController();

  TextEditingController emailController3 = TextEditingController();

  TextEditingController emailController4 = TextEditingController();

  Rx<BillingModel> billingModelObj;

  Rx<bool> iconcheckboxcheckedsymbolic = false.obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    emailController1.dispose();
    emailController2.dispose();
    emailController3.dispose();
    emailController4.dispose();
  }

  onSelected(dynamic value) {
    for (var element in billingModelObj.value.dropdownItemList.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    billingModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    for (var element in billingModelObj.value.dropdownItemList1.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    billingModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    for (var element in billingModelObj.value.dropdownItemList2.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    billingModelObj.value.dropdownItemList2.refresh();
  }

  onSelected3(dynamic value) {
    for (var element in billingModelObj.value.dropdownItemList3.value) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    billingModelObj.value.dropdownItemList3.refresh();
  }
}
