import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sboba_user_app/lang/lang_controller.dart';
import 'package:sboba_user_app/module/home_screen/home_controller.dart';
import 'package:sboba_user_app/module/home_screen/home_screen_binding.dart';
import 'package:sboba_user_app/module/splash_screen/splash_screen_animation.dart';
import 'package:sboba_user_app/shared/cash_helper.dart';
import 'package:sboba_user_app/shared/my_colors.dart';
import 'package:sizer/sizer.dart';

import 'lang/translation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CashHelper.init();
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: (context) => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LanguageController languageController = Get.put(LanguageController());
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        translations: Translation(),
        locale: languageController.language,
        initialBinding: HomeSBinding(),
        debugShowCheckedModeBanner: false,
        title: 'Sboba_User_app',
        theme: ThemeData(
            fontFamily: 'Tajawal',
            primarySwatch: Colors.grey,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                    systemNavigationBarColor: myGreen,
                    statusBarColor: Colors.white,
                    statusBarIconBrightness: Brightness.dark,
                    statusBarBrightness: Brightness.dark),
                iconTheme: IconThemeData(
                  color: myBlack,
                ))),
        home: SplashScreen(),
      ),
    );
  }
}
