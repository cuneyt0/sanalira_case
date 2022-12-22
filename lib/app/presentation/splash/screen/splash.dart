import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sanaliracase/app/presentation/bank_list/screen/bank_list.dart';
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
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => BankList()),
                (Route<dynamic> route) => false,
              );
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
