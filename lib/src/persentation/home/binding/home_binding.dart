import 'package:get/get.dart';

import '../../../data/datasources/remote/content_remote_data_source.dart';
import '../../../data/repositories/content_repository_impl.dart';
import '../../../domain/repositories/content_repository.dart';
import '../../../domain/usecase/event_usecase.dart';
import '../controller/home_controller.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {


    Get.lazyPut<ContentRemoteDataSource>(() => ContentRemoteDataSourceImpl());
    Get.lazyPut<ContentRepository>(
      () => ContentRepositoryImpl(contentApiService: Get.find()),
    );
    Get.lazyPut(() => EventUseCase(Get.find()));

    Get.lazyPut(
      () => HomeController(eventUseCase: Get.find()),
    );
    // Get.put(CacheManager());
    // Get.put(GlobalRepository();
  }
}
