import 'package:newdaysexpress/presentation/billing_container_screen/billing_container_screen.dart';
import 'package:newdaysexpress/presentation/billing_container_screen/binding/billing_container_binding.dart';
import 'package:newdaysexpress/presentation/billing_result_screen/billing_result_screen.dart';
import 'package:newdaysexpress/presentation/billing_result_screen/binding/billing_result_binding.dart';
import 'package:newdaysexpress/presentation/shipping_to_tab_container_screen/shipping_to_tab_container_screen.dart';
import 'package:newdaysexpress/presentation/shipping_to_tab_container_screen/binding/shipping_to_tab_container_binding.dart';
import 'package:newdaysexpress/presentation/shipping_description_tab_container_screen/shipping_description_tab_container_screen.dart';
import 'package:newdaysexpress/presentation/shipping_description_tab_container_screen/binding/shipping_description_tab_container_binding.dart';
import 'package:newdaysexpress/presentation/shipping_note_screen/shipping_note_screen.dart';
import 'package:newdaysexpress/presentation/shipping_note_screen/binding/shipping_note_binding.dart';
import 'package:newdaysexpress/presentation/splash_screen/splash_screen.dart';
import 'package:newdaysexpress/presentation/splash_screen/binding/splash_binding.dart';
import 'package:newdaysexpress/presentation/searching_screen/searching_screen.dart';
import 'package:newdaysexpress/presentation/searching_screen/binding/searching_binding.dart';
import 'package:newdaysexpress/presentation/order_detail_screen/order_detail_screen.dart';
import 'package:newdaysexpress/presentation/order_detail_screen/binding/order_detail_binding.dart';
import 'package:newdaysexpress/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:newdaysexpress/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String billingPage = '/billing_page';

  static const String billingContainerScreen = '/billing_screen';

  static const String billingResultScreen = '/billing_result_screen';

  static const String shippingFromPage = '/shipping_from_page';

  static const String shippingToPage = '/shipping_to_page';

  static const String shippingToTabContainerScreen =
      '/shipping_to_tab_container_screen';

  static const String shippingDescriptionPage = '/shipping_description_page';

  static const String shippingDescriptionTabContainerScreen =
      '/shipping_description_tab_container_screen';

  static const String shippingNoteScreen = '/shipping_note_screen';

  static const String splashScreen = '/splash_screen';

  static const String searchingScreen = '/searching_screen';

  static const String orderDetailScreen = '/order_detail_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: billingContainerScreen,
      page: () => BillingContainerScreen(),
      bindings: [
        BillingContainerBinding(),
      ],
    ),
    GetPage(
      name: billingResultScreen,
      page: () => BillingResultScreen(),
      bindings: [
        BillingResultBinding(),
      ],
    ),
    GetPage(
      name: shippingToTabContainerScreen,
      page: () => ShippingToTabContainerScreen(),
      bindings: [
        ShippingToTabContainerBinding(),
      ],
    ),
    GetPage(
      name: shippingDescriptionTabContainerScreen,
      page: () => ShippingDescriptionTabContainerScreen(),
      bindings: [
        ShippingDescriptionTabContainerBinding(),
      ],
    ),
    GetPage(
      name: shippingNoteScreen,
      page: () => ShippingNoteScreen(),
      bindings: [
        ShippingNoteBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: searchingScreen,
      page: () => SearchingScreen(),
      bindings: [
        SearchingBinding(),
      ],
    ),
    GetPage(
      name: orderDetailScreen,
      page: () => OrderDetailScreen(),
      bindings: [
        OrderDetailBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
