import '../controller/order_detail_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderDetailScreen.
///
/// This class ensures that the OrderDetailController is created when the
/// OrderDetailScreen is first loaded.
class OrderDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailController());
  }
}
