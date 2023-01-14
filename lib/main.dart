import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_deliver_app/routes/routes.dart';
import 'package:food_deliver_app/screens/onboarding/onboarding.dart';
import 'package:food_deliver_app/themes/app_theme.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          theme: AppTheme.lightTheme,
          initialRoute: OnboardingScreen.routeName,
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
