import 'local_repository.dart';

class LocalProvider {
  static final LocalProvider _singleton = LocalProvider._internal();

  factory LocalProvider() {
    return _singleton;
  }
  LocalProvider._internal();
  late LocalRepository repo;
  Future<void> savePrivateKey({required String privateKey}) async {
    await repo.savePrivateKey(privateKey: privateKey);
  }
}
