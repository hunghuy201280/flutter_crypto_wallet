import 'remote_repository.dart';

class RemoteProvider {
  const RemoteProvider({
    required RemoteRepository repo,
  }) : _repo = repo;
  final RemoteRepository _repo;

  Future<String> test() async {
    final response = await _repo.test();

    return response.data;
  }

  Future<String> verifyWallet({required String privateKey}) async {
    final response = await _repo.verifyWallet(privateKey: privateKey);
    return response.data["data"].first;
  }
}
