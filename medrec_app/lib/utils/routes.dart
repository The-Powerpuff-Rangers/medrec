import 'package:flutter/material.dart';
import 'package:medrec_app/screens/form_confirm_submit_page.dart';
import 'package:medrec_app/screens/login_page.dart';
import 'package:medrec_app/screens/search_screen.dart';

import '../screens/coming_soon.dart';
import '../screens/home_page.dart';

class MedRecRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routename:
        return MaterialPageRoute<void>(
          builder: (context) => const HomePage(),
        );
      case LoginPage.routename:
        return MaterialPageRoute<void>(
          builder: (context) => const LoginPage(),
        );
      case FormConfirmSubmitPage.routename:
        return MaterialPageRoute<void>(
          builder: (context) => const FormConfirmSubmitPage(),
        );
      case ComingSoonScreen.routename:
        return MaterialPageRoute<void>(
          builder: (context) => const ComingSoonScreen(),
        );
      case SearchScreen.routname:
        return MaterialPageRoute<void>(
          builder: (context) => const SearchScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}