import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_project/routes/app_routes.dart';
import 'package:getx_project/screens/home_screen/home_screen_binding.dart';
import 'package:getx_project/screens/home_screen/home_screen_view.dart';

class AppPages {
  static List<GetPage<dynamic>> getPages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
  ];
}
