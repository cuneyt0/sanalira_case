import 'package:flutter/material.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class RegisterLogoWidget extends StatelessWidget {
  const RegisterLogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      child: Container(
        width: context.screenWidht(width: 1),
        height: context.screenHeight(height: .2),
        decoration: BoxDecoration(
            color: ColorName.mediumSeaGreen,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Image.asset(
          Assets.images.logo.keyName,
          width: context.screenWidht(width: .27),
          height: context.screenHeight(height: .15),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
