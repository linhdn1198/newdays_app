import '../controller/shipping_to_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShippingToTabContainerScreen.
///
/// This class ensures that the ShippingToTabContainerController is created when the
/// ShippingToTabContainerScreen is first loaded.
class ShippingToTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingToTabContainerController());
  }
}
