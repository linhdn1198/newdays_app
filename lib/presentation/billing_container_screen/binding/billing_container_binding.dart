import '../controller/billing_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BillingContainerScreen.
///
/// This class ensures that the BillingContainerController is created when the
/// BillingContainerScreen is first loaded.
class BillingContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BillingContainerController());
  }
}
