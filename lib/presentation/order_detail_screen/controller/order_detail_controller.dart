import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/order_detail_screen/models/order_detail_model.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/data/models/getVanDon/get_get_van_don_resp.dart';
import 'package:newdaysexpress/data/apiClient/api_client.dart';

/// A controller class for the OrderDetailScreen.
///
/// This class manages the state of the OrderDetailScreen, including the
/// current orderDetailModelObj
class OrderDetailController extends GetxController {
  var code = Get.arguments[NavigationArgs.code];

  Rx<OrderDetailModel> orderDetailModelObj = OrderDetailModel().obs;

  GetGetVanDonResp getGetVanDonResp = GetGetVanDonResp();

  /// Calls the http://13.229.87.126/api/Van-Don/NInvFRgJus API with the specified request data.
  ///
  /// The [Map] parameter represents request body
  Future<void> callGetVanDon() async {
    try {
      getGetVanDonResp = await Get.find<ApiClient>().getVanDon();
      _handleGetVanDonSuccess();
    } on GetGetVanDonResp catch (e) {
      getGetVanDonResp = e;
      rethrow;
    }
  }

  /// handles the success response for the API
  void _handleGetVanDonSuccess() {
    orderDetailModelObj.value.title.value =
        getGetVanDonResp.data!.code!.toString();
    orderDetailModelObj.value.label12.value =
        getGetVanDonResp.data!.fromName!.toString();
    orderDetailModelObj.value.label.value =
        getGetVanDonResp.data!.fromAddress1!.toString();
    orderDetailModelObj.value.label123.value =
        getGetVanDonResp.data!.toName!.toString();
    orderDetailModelObj.value.label12345.value =
        getGetVanDonResp.data!.toAddress1!.toString();
    orderDetailModelObj.value.label1234.value =
        getGetVanDonResp.data!.moTa!.toString();
    orderDetailModelObj.value.label123456.value =
        getGetVanDonResp.data!.ngayNhan!.toString();
    orderDetailModelObj.value.label1.value =
        getGetVanDonResp.data!.cuocPhiTongTien!.toString();
    orderDetailModelObj.value.label1234567.value =
        getGetVanDonResp.data!.loaiHang!.name!.toString();
  }

  /// calls the [http://13.229.87.126/api/Van-Don/NInvFRgJus] API
  ///
  /// It has [GetGetVanDonReq] as a parameter which will be passed as a API request body
  /// If the call is successful, the function calls the `_onGetVanDonSuccess()` function.
  /// If the call fails, the function calls the `_onGetVanDonError()` function.
  ///
  /// Throws a `NoInternetException` if there is no internet connection.
  @override
  Future<void> onReady() async {
    try {
      await callGetVanDon();
      _onGetVanDonSuccess();
    } on GetGetVanDonResp {
      _onGetVanDonError();
    } on NoInternetException catch (e) {
      Get.rawSnackbar(message: e.toString());
    } catch (e) {
      //TODO: Handle generic errors
    }
  }

  void _onGetVanDonSuccess() {}
  void _onGetVanDonError() {}
}
