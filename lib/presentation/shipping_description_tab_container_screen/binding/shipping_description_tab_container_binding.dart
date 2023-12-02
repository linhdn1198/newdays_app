import '../controller/shipping_description_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShippingDescriptionTabContainerScreen.
///
/// This class ensures that the ShippingDescriptionTabContainerController is created when the
/// ShippingDescriptionTabContainerScreen is first loaded.
class ShippingDescriptionTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingDescriptionTabContainerController());
  }
}
