import 'package:get/get.dart';
import 'package:getx_project/localization/language/localization_service.dart';

class PracticeOneController extends GetxController {
  final LocalizationService _localizationService = LocalizationService();

  var currentLang = "enUs".obs;

  @override
  void onInit() {
    super.onInit();
    currentLang.value =
        _localizationService.box.read("lang") ?? "enUs"; 
  }

  void toggleLanguage() {
    if (currentLang.value == "enUs") {
      _localizationService.changeLocale("kmKH");
      currentLang.value = "kmKH";
    } else {
      _localizationService.changeLocale("enUs");
      currentLang.value = "enUs";
    }
  }
}
