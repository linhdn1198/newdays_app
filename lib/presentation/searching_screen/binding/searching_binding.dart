import '../controller/searching_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SearchingScreen.
///
/// This class ensures that the SearchingController is created when the
/// SearchingScreen is first loaded.
class SearchingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchingController());
  }
}
