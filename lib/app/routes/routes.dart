// ! ROUTES

import 'package:flutter/material.dart';
import 'package:sanaliracase/app/presentation/bank_list/screen/bank_list.dart';
import 'package:sanaliracase/app/presentation/register/screen/register.dart';

class Routes {
  Routes._();

  static const register = '/register';
  static const bank_list = '/bank_list';

  static Route<dynamic> onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case register:
        return _materialPageRoute(const Register());
      case bank_list:
        return _materialPageRoute(const BankList());
      default:
        return _materialPageRoute(const Text('PremiumPager'));
    }
  }

  static MaterialPageRoute<dynamic> _materialPageRoute(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
