import 'package:get/get.dart';
import 'package:mlm_app_for_driver/getx_sample/app/data/model/model.dart';
import 'package:mlm_app_for_driver/getx_sample/app/data/repository/posts_repository.dart';
import 'package:mlm_app_for_driver/getx_sample/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final MyRepository repository;

  HomeController({required this.repository});

  final _postsList = <MyModel>[].obs;

  get postList => _postsList.obs.value;

  set postList(value) => _postsList.value = value;

  final _post = MyModel().obs;

  get post => _post.value;

  set post(value) => _post.value = value;

  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }

  adicionar(post) {}

  excluir(id) {}

  editar() {}

  details(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
