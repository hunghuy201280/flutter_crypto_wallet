import 'package:flutter_ntf_marketplace/services/local/local_provider.dart';
import 'package:flutter_ntf_marketplace/services/local/local_repository.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_provider.dart';
import 'package:flutter_ntf_marketplace/services/remote/remote_repository.dart';
import 'package:get/get.dart';

class AppConfigs {
  static const kServerUri = "http://localhost:3000";

  static void initializeApp({
    required RemoteRepository remoteRepo,
    required LocalRepository localRepository,
  }) {
    Get.put(LocalProvider()..repo = localRepository);
    Get.put(RemoteProvider()..repo = remoteRepo);
  }
}
