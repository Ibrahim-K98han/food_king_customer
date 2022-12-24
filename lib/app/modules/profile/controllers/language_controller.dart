import 'dart:ui';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguageController extends GetxController {
  final box = GetStorage();

  changeLanguage(String value) {
    if (value == "en") {
      box.write('lang', value);
      box.write('langKey', 'US');
      box.write('selectedValue', 'English');
      Get.updateLocale(const Locale('en', 'US'));
      update();
    } else if (value == "bn") {
      box.write('lang', value);
      box.write('langKey', 'BD');
      box.write('selectedValue', 'Bangla');
      Get.updateLocale(const Locale('bn', 'BD'));
      update();
    } else if (value == "de") {
      box.write('lang', value);
      box.write('langKey', 'DE');
      box.write('selectedValue', 'German');
      Get.updateLocale(const Locale('de', 'DE'));
      update();
    } else if (value == "fr") {
      box.write('lang', value);
      box.write('langKey', 'FR');
      box.write('selectedValue', 'France');
      Get.updateLocale(const Locale('fr', 'FR'));
      update();
    } else if (value == "ar") {
      box.write('lang', value);
      box.write('langKey', 'SA');
      box.write('selectedValue', 'Arabic');
      Get.updateLocale(const Locale('ar', 'AR'));
      update();
    }
  }
}
