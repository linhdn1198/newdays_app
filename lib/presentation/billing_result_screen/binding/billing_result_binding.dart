import '../controller/billing_result_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BillingResultScreen.
///
/// This class ensures that the BillingResultController is created when the
/// BillingResultScreen is first loaded.
class BillingResultBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BillingResultController());
  }
}
