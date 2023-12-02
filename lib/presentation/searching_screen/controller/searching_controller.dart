import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/searching_screen/models/searching_model.dart';
import 'package:flutter/material.dart';
import 'package:newdaysexpress/data/models/getVanDon/get_get_van_don_resp.dart';
import 'package:newdaysexpress/data/apiClient/api_client.dart';

/// A controller class for the SearchingScreen.
///
/// This class manages the state of the SearchingScreen, including the
/// current searchingModelObj
class SearchingController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  Rx<SearchingModel> searchingModelObj = SearchingModel().obs;

  GetGetVanDonResp getGetVanDonResp = GetGetVanDonResp();

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
  }

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
  void _handleGetVanDonSuccess() {}
}
