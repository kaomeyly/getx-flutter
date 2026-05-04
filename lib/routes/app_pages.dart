import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:getx_project/routes/app_routes.dart';
import 'package:getx_project/screens/Practice/practice_one_binding.dart';
import 'package:getx_project/screens/Practice/practice_one_view.dart';
import 'package:getx_project/screens/home_screen/home_screen_binding.dart';
import 'package:getx_project/screens/home_screen/home_screen_view.dart';
import 'package:getx_project/screens/login_screen/login_screen_view.dart';
import 'package:getx_project/screens/product_screen/product_screen_view.dart';
import 'package:getx_project/screens/them_exam_screen/them_exam_screen_view.dart';

class AppPages {
  static List<GetPage<dynamic>> getPages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomeScreenView(),
      binding: HomeScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginScreenView(),
      binding: LoginScreenViewBinding(),
    ),
    GetPage(
      name: AppRoutes.practiceOne,
      page: () => PracticeOneView(),
      binding: PracticeOneBinding(),
    ),
    GetPage(
      name: AppRoutes.them,
      page: () => ThemExamScreenView(),
      binding: ThemExamScreenBinding(),
    ),
    GetPage(
      name: AppRoutes.product,
      page: () => ProductScreenView(),
      binding: ProductScreenViewBinding(),
    ),
  ];
}
