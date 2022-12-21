import 'package:flutter/material.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorName.mediumSeaGreen,
        body: Container(
          color: ColorName.mediumSeaGreen,
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(children: [
            Positioned(
              top: 90,
              child: Container(
                width: context.screenWidht(width: 1),
                height: context.screenHeight(height: .2),
                color: ColorName.mediumSeaGreen,
                child: Center(
                    child: Image.asset(
                  Assets.images.logo.keyName,
                  //width: context.screenWidht(width: 1),
                  width: 100,
                  height: 90,
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Positioned(
              bottom: -30,
              child: Container(
                width: context.screenWidht(width: 1),
                height: context.screenHeight(height: .8),
                decoration: BoxDecoration(
                    color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: Column(
                  children: [],
                ),
              ),
            ),
          ]),
        ));
  }
}
/**
 * 
 * 
 *  Expanded(
            child: Container(
              width: context.screenWidht(width: 1),
              color: ColorName.mediumSeaGreen,
              child: Center(
                  child: Image.asset(
                Assets.images.logo.keyName,
                //width: context.screenWidht(width: 1),
                width: 100,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
              ))
 */
