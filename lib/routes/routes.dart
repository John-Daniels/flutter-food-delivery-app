import 'package:food_deliver_app/controllers/food_detail_controller.dart';
import 'package:food_deliver_app/controllers/home_controller.dart';
import 'package:food_deliver_app/controllers/zoom_controller.dart';
import 'package:food_deliver_app/screens/auth/auth_screen.dart';
import 'package:food_deliver_app/screens/food_detail/food_detail.dart';
import 'package:food_deliver_app/screens/home/home_screen.dart';
import 'package:food_deliver_app/screens/home/views/search_view.dart';
import 'package:food_deliver_app/screens/onboarding/onboarding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static List<GetPage> get routes => [
        GetPage(
          name: OnboardingScreen.routeName,
          page: () => const OnboardingScreen(),
        ),
        GetPage(
          name: AuthScreen.routeName,
          page: () => const AuthScreen(),
        ),
        GetPage(
          name: HomeScreen.routeName,
          page: () => const HomeScreen(),
          binding: BindingsBuilder(() {
            Get.put(HomeController());
            Get.put(ZoomController());
          }),
        ),
        GetPage(
          transitionDuration: const Duration(milliseconds: 300),
          fullscreenDialog: true,
          name: SearchView.routeName,
          page: () => const SearchView(),
        ),
        GetPage(
          name: FoodDetail.routeName,
          page: () => const FoodDetail(),
          transitionDuration: const Duration(milliseconds: 300),
          fullscreenDialog: true,
          binding: BindingsBuilder(() {
            Get.put(FoodDetailController());
          }),
        )
      ];
}
