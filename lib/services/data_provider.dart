import 'package:flutter_ntf_marketplace/models/example_model.dart';

import 'data_repository.dart';

class DataProvider {
  static Future<ExampleModel> getSomething() async {
    final response = await DataRepository.getSomething();

    final result = ExampleModel.fromMap(response.data);

    return result;
  }
}
