import 'package:flutter/material.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/bank_list/view_model/bank_list_viewmodel.dart';
import 'package:sanaliracase/gen/assets.gen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final BankListViewModel _viewmodel = getIt.get<BankListViewModel>();
  @override
  void initState() {
    super.initState();
    _viewmodel.hasLoggedInUser();
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
