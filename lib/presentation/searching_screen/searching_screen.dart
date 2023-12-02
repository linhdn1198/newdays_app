import 'controller/searching_controller.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_page/billing_page.dart';
import 'package:newdaysexpress/widgets/custom_bottom_bar.dart';
import 'package:newdaysexpress/widgets/custom_elevated_button.dart';
import 'package:newdaysexpress/widgets/custom_text_form_field.dart';
import 'package:newdaysexpress/data/models/getVanDon/get_get_van_don_resp.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SearchingScreen extends GetWidget<SearchingController> {
  const SearchingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 15.v),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("lbl_m_v_n_n".tr,
                          style: theme.textTheme.bodyMedium)),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                      controller: controller.editTextController,
                      textInputAction: TextInputAction.done),
                  SizedBox(height: 12.v),
                  CustomElevatedButton(
                      text: "lbl_tra_c_u".tr,
                      onPressed: () {
                        searching();
                      }),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Nhng:
        return "/";
      case BottomBarEnum.Traccgihng:
        return AppRoutes.billingContainerScreen;
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

  /// calls the [http://13.229.87.126/api/Van-Don/NInvFRgJus] API
  ///
  /// It has [GetGetVanDonReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onSearchingSuccess()` function.
  /// If the call fails, the function calls the `_onSearchingError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  Future<void> searching() async {
    try {
      await controller.callGetVanDon();
      _onSearchingSuccess();
    } on GetGetVanDonResp {
      _onSearchingError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  /// Navigates to the orderDetailScreen when the action is triggered.
  void _onSearchingSuccess() {
    Get.toNamed(AppRoutes.orderDetailScreen, arguments: {
      NavigationArgs.code: controller.getGetVanDonResp.data?.code,
      NavigationArgs.fromName: controller.getGetVanDonResp.data?.fromName,
      NavigationArgs.fromAddress1: controller.getGetVanDonResp.data?.fromAddress1,
      NavigationArgs.toName: controller.getGetVanDonResp.data?.toName,
      NavigationArgs.toAddress1: controller.getGetVanDonResp.data?.toAddress1,
      NavigationArgs.moTa: controller.getGetVanDonResp.data?.moTa,
      NavigationArgs.ngayNhan: controller.getGetVanDonResp.data?.ngayNhan,
      NavigationArgs.cuocPhiTongTien: controller.getGetVanDonResp.data?.cuocPhiTongTien,
      NavigationArgs.loaiHang: controller.getGetVanDonResp.data?.loaiHang?.name,
    });
  }


  /// Displays a toast message using the Fluttertoast library.
  void _onSearchingError() {
    Fluttertoast.showToast(
        msg: controller.getGetVanDonResp.message.toString() ?? '');
  }
}
