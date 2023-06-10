import 'package:get/get.dart';
import '../../../core/httpservices/http_services_impl.dart';
import '../../../core/httpservices/http_services_repository.dart';
import 'main_wrapper_repository.dart';

class MainWrapperRepoImpl implements MainWrapperRepo {
  late HttpService httpService;

  MainWrapperRepoImpl() {
    httpService = Get.put(HttpServiceImplementation());
  }
}
