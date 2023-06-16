import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    final httpApi = http.Client();
    Get.lazyPut(() => httpApi);
  }
}
