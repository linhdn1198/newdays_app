import 'package:newdaysexpress/core/app_export.dart';
import 'package:newdaysexpress/presentation/billing_container_screen/models/billing_container_model.dart';

/// A controller class for the BillingContainerScreen.
///
/// This class manages the state of the BillingContainerScreen, including the
/// current billingContainerModelObj
class BillingContainerController extends GetxController {
  Rx<BillingContainerModel> billingContainerModelObj =
      BillingContainerModel().obs;
}
