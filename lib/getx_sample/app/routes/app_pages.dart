import 'package:get/get.dart';
import 'package:mlm_app_for_driver/getx_sample/app/bindings/details_binding.dart';
import 'package:mlm_app_for_driver/getx_sample/app/bindings/home_binding.dart';
import 'package:mlm_app_for_driver/getx_sample/app/ui/android/details/details_page.dart';
import 'package:mlm_app_for_driver/getx_sample/app/ui/android/home/home_page.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: Routes.INITIAL, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()),
  ];
}