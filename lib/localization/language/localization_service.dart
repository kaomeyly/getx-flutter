import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalizationService {
  var box = GetStorage();

  Locale getLocal() {
    var lang = box.read("lang") ?? "kmKH";
    return Locale(lang);
  }

  void changeLocale(String lang) {
    box.write("lang", lang);
    Get.updateLocale(Locale(lang));
  }
}
