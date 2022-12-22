import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/bank_list/view_model/bank_list_viewmodel.dart';
import 'package:sanaliracase/app/routes/routes.dart';
import 'package:sanaliracase/core/cache/cache_manager.dart';
import 'package:sanaliracase/core/navigation/navigation_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  CacheManager cacheManager = CacheManager();
  final BankListViewModel _viewmodel = getIt.get<BankListViewModel>();
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () async {
        cacheManager.getLoginResponse().then(
          (loginRes) async {
            if (loginRes == null) {
              await Navigation.pushReplacementNamed(root: Routes.register);
            } else {
              await _viewmodel.getAssignment();

              await Navigation.pushNamedAndRemoveAll(root: Routes.bank_list);
            }
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CircleAvatar(
          backgroundImage: AssetImage(Assets.images.logo.keyName),
          maxRadius: 120,
          minRadius: 50,
        ),
      ),
    );
  }
}
