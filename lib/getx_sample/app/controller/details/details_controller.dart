import 'package:get/get.dart';
import 'package:mlm_app_for_driver/getx_sample/app/data/model/model.dart';
import 'package:mlm_app_for_driver/getx_sample/app/data/repository/posts_repository.dart';

class DetailsController extends GetxController {
  final MyRepository repository;

  DetailsController({required this.repository}) : assert(repository != null);

  final _post = MyModel().obs;

  get post => this._post.value;

  set post(value) => this._post.value = value;

  editar(post) {
    print('editar');
  }

  delete(id) {
    print('deletar');
  }
}
