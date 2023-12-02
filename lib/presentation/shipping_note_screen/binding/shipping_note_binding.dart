import '../controller/shipping_note_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ShippingNoteScreen.
///
/// This class ensures that the ShippingNoteController is created when the
/// ShippingNoteScreen is first loaded.
class ShippingNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ShippingNoteController());
  }
}
