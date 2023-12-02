import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/core/utils/progress_dialog_utils.dart';
import 'package:newdaysexpress/data/models/getVanDon/get_get_van_don_resp.dart';

class ApiClient extends GetConnect {
  var url = "http://13.229.87.126";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = const Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  /// Performs API call for http://13.229.87.126/api/Van-Don/NInvFRgJus
  ///
  /// Sends a GET request to the server's 'http://13.229.87.126/api/Van-Don/NInvFRgJus' endpoint
  /// with the provided headers and request data
  /// Returns a [GetGetVanDonResp] object representing the response.
  /// Throws an error if the request fails or an exception occurs.
  Future<GetGetVanDonResp> getVanDon(String code) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get('$url/api/Van-Don/$code');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        return GetGetVanDonResp.fromJson(response.body);
      } else {
        throw response.body != null
            ? GetGetVanDonResp.fromJson(response.body)
            : 'Something Went Wrong!';
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(
        error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }
}
