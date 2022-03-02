import 'package:flutter_ntf_marketplace/models/example_model.dart';

import 'local_repository.dart';

class LocalProvider {
  static final LocalProvider _singleton = LocalProvider._internal();

  factory LocalProvider() {
    return _singleton;
  }
  LocalProvider._internal();
  late LocalRepository repo;
  Future<ExampleModel> getSomething() async {
    final response = await repo.getSomething();

    final result = ExampleModel.fromMap(response.data);

    return result;
  }
}
