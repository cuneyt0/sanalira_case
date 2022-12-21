import 'package:flutter/material.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/register/screen/register.dart';
import 'package:sanaliracase/app/routes/routes.dart';
import 'package:sanaliracase/core/navigation/navigation_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIT();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: Navigation.navigationKey,
      onGenerateRoute: Routes.onGenerateRoutes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Register(),
    );
  }
}
