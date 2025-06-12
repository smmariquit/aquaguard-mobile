import 'package:flutter/material.dart';
import 'package:aquaguard_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:aquaguard_mobile/features/auth/presentation/screens/register_screen.dart';
import 'package:aquaguard_mobile/features/home/presentation/screens/home_screen.dart';
import 'package:aquaguard_mobile/features/report/presentation/screens/report_screen.dart';
import 'package:aquaguard_mobile/features/profile/presentation/screens/profile_screen.dart';
import 'package:aquaguard_mobile/features/map/presentation/screens/map_screen.dart';

class AppRouter {
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String report = '/report';
  static const String profile = '/profile';
  static const String map = '/map';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case report:
        return MaterialPageRoute(builder: (_) => const ReportScreen());
      case profile:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case map:
        return MaterialPageRoute(builder: (_) => const MapScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
} 