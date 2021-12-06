import 'package:flutter/material.dart';

import 'home.dart';
import 'login/login_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String login = '/login';

  static final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    login: (BuildContext context) => LoginPage(),
  };
}
