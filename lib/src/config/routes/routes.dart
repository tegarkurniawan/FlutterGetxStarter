
import 'package:get/get.dart';
import 'package:templategetx/src/persentation/home/binding/home_binding.dart';
import 'package:templategetx/src/persentation/home/views/home.dart';


appRoutes() => [
      GetPage(
        name: '/home',
        page: () => const Home(),
        binding: HomeBindings(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: const Duration(milliseconds: 500),
      ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    return super.onPageCalled(page);
  }
}
