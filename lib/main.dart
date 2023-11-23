import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'app/core/config/theme/color.dart';
import 'app/core/config/theme/fonts.dart';
import 'app/core/config/theme/theme.dart';
import 'app/core/services/base/api_service.dart';
import 'app/core/services/base/preferences.dart';
import 'app/core/services/bindings/base_binding.dart';
import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //Native Splash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(seconds: 3));
  FlutterNativeSplash.remove();

  /// mobile orientation off
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // Status Bar Color
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark,
  ));

  /// Shared Preferences
  await Preferences.init();

  /// Initialize the dio
  final dio = Dio();
  
  /// Add the dio instance to the api service
  final apiService = ApiService(dio: dio);

  /// Add the dio instance to the bindings
  runApp(MyApp(apiService: apiService));
}

class MyApp extends StatelessWidget {
  final ApiService apiService;
  const MyApp({super.key, required this.apiService});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
          transitionDuration: const Duration(milliseconds: 500),
          title: 'Mr.Xpert',
          theme: ThemeData(
            fontFamily: Fonts.primary,
            primarySwatch: Colors.blue,
            splashColor: kPrimaryColor.withOpacity(.1),
            appBarTheme: const AppBarTheme(color: Color(0xff333333)),
            scaffoldBackgroundColor: kWhite,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: kWhite,
            ),
            textTheme: kTextTheme,
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey)
                .copyWith(background: const Color(0xffFFFFFF)),
          ),
          initialBinding: BaseBinding(
            apiService: apiService,
          ),
          initialRoute: AppPages.INITIAL,
          // initialRoute: Routes.APPLICATION,
          getPages: AppPages.routes,
        );
      },
    );
  }
}
