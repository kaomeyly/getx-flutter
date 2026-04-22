import 'package:get/get.dart';
import 'package:getx_project/localization/language/en_us.dart';
import 'package:getx_project/localization/language/km_kh.dart';

class AppTranslataton extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {"kmKH": kmKH, "enUs": enUs};
}
