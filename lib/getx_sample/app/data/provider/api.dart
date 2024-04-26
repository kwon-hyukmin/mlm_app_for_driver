import 'dart:convert';
import 'package:mlm_app_for_driver/getx_sample/app/data/model/model.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

//nossa url base
var baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/');

//nossa classe responsável por encapsular os métodos http
class MyApiClient {
//seu client http, pode ser http, http.Client, dio, apenas traga seus métodos para cá e funcionarão normalmente :D
  final http.Client httpClient;
  MyApiClient({required this.httpClient});

  //um exemplo rápido, aqui estamos recuperando todos os posts disponibilizados pela api(100)
  getAll() async {
    try {
      var response = await httpClient.get(baseUrl);
      if(response.statusCode == 200){
        Iterable jsonResponse = json.decode(response.body);
        print(jsonResponse);
        List<MyModel> listMyModel = jsonResponse.map((model) => MyModel.fromJson(model)).toList();
        return listMyModel;
      }else print ('erro');
    } catch(_){ }
  }
}