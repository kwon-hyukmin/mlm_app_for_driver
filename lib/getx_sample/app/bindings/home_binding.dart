import 'package:mlm_app_for_driver/getx_sample/app/controller/home/home_controller.dart';
import 'package:mlm_app_for_driver/getx_sample/app/data/provider/api.dart';
import 'package:mlm_app_for_driver/getx_sample/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
        repository: MyRepository(
          apiClient: MyApiClient(
            httpClient: http.Client(),
          ),
        ),
      );
    });
  }
}
