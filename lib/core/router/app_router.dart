import 'package:go_router/go_router.dart';
import 'package:laundry_app/core/constants/router_constants.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/Home_driver_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/apply_becoming_driver_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/forget_password_screen.dart';
import 'package:laundry_app/features/driver/auth/presentation/screens/log_in_driver_screen.dart';
import 'package:laundry_app/features/laundry/auth/presentation/screens/log_in_screen.dart';
import 'package:laundry_app/features/laundry/home/presentation/screens/home_screen.dart';
import 'package:laundry_app/features/laundry/wallet/presentation/screens/earning_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: RouterConstants.loginLaundryScreen,
    routes: [
      GoRoute(
        path: RouterConstants.loginLaundryScreen,
        builder: (context, state) => const LogInScreen(),
      ),
      GoRoute(
        path: RouterConstants.homeLaundryScreen,
        builder: (context, state) => const HomeLaundryScreen(),
      ),
      GoRoute(
        path: RouterConstants.earningScreen,
        builder: (context, state) => const EarningScreen(),
      ),
      GoRoute(
        path: RouterConstants.forgetPasswordScreen,
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
      GoRoute(
        path: RouterConstants.logInDriverScreen,
        builder: (context, state) => const LogInDriverScreen(),
      ),
      GoRoute(
        path: RouterConstants.applyBecomingDriverScreen,
        builder: (context, state) => const ApplyBecomingDriverScreen(),
      ),
      GoRoute(
        path: RouterConstants.driverHome,
        builder: (context, state) => const HomeDriverScreen(),
      ),
    ],
  );
}
