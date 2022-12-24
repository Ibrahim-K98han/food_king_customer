import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  final box = GetStorage();
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  dynamic langValue = const Locale('en', 'US');
  if (box.read('lang') != null) {
    langValue = Locale(box.read('lang'), box.read('langKey'));
  } else {
    langValue = const Locale('en', 'US');
  }
  runApp(
    ScreenUtilInit(
      designSize: Size(360, 800),
      builder: ((context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Application",
        //translations: Languages(),
        locale: langValue,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      )),
    ),
  );
}
