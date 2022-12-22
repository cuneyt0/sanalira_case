import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/register/screen/register.dart';
import 'package:sanaliracase/app/routes/routes.dart';
import 'package:sanaliracase/core/navigation/navigation_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIT();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Navigation.navigationKey,
      onGenerateRoute: Routes.onGenerateRoutes,
      builder: EasyLoading.init(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Register(),
    );
  }
}
