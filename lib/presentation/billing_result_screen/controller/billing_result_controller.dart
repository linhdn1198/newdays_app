import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_result_screen/models/billing_result_model.dart';

/// A controller class for the BillingResultScreen.
///
/// This class manages the state of the BillingResultScreen, including the
/// current billingResultModelObj
class BillingResultController extends GetxController {
  Rx<BillingResultModel> billingResultModelObj = BillingResultModel().obs;
}
