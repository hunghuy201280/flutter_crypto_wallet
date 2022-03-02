import 'remote_repository.dart';

class RemoteProvider {
  static final RemoteProvider _singleton = RemoteProvider._internal();

  factory RemoteProvider() {
    return _singleton;
  }
  RemoteProvider._internal();

  late RemoteRepository repo;

  Future<String> test() async {
    final response = await repo.test();

    return response.data;
  }

  Future<String> verifyWallet({required String privateKey}) async {
    final response = await repo.verifyWallet(privateKey: privateKey);
    return response.data["data"].first;
  }
}
