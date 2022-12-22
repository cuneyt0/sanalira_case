import 'package:flutter/material.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/register/viewmodel/register_viewmodel.dart';
import 'package:sanaliracase/app/presentation/register/widget/register_input_widget.dart';
import 'package:sanaliracase/app/presentation/register/widget/register_logo_widget.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterViewModel _viewModel = getIt.get<RegisterViewModel>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorName.mediumSeaGreen,
      body: Container(
        color: ColorName.mediumSeaGreen,
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            RegisterLogoWidget(),
            registerInputWidget(context, _viewModel),
          ],
        ),
      ),
    );
  }
}
