import 'local_repository.dart';

class LocalProvider {
  const LocalProvider({
    required LocalRepository repo,
  }) : _repo = repo;
  final LocalRepository _repo;
  Future<void> savePrivateKey({required String privateKey}) async {
    await _repo.savePrivateKey(privateKey: privateKey);
  }
}
