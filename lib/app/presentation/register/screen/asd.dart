import 'package:flutter/material.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class Register1 extends StatelessWidget {
  const Register1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: ColorName.mediumSeaGreen,
      body: Stack(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 420.0),
              child: Container(
                width: context.screenWidht(width: 1),
                color: ColorName.mediumSeaGreen,
                child: Center(
                    child: CircleAvatar(
                        radius: 18,
                        backgroundColor: ColorName.mediumSeaGreen,
                        child: Image.asset(
                          Assets.images.logo.keyName,
                          width: 96,
                        ))),
              ),
            ),
          ),
          Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 320.0),
                child: Container(
                  width: context.screenWidht(width: 1),
                  decoration: new BoxDecoration(
                      color: Colors.white, //new Color.fromRGBO(255, 0, 0, 0.0),
                      borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                ),
              )),
        ],
      ),
    );
  }
}


/**
 * 
 * 
 *           Container(
            // height: context.screenHeight(height: 1),
            decoration: BoxDecoration(
                color: Colors.red, //new Color.fromRGBO(255, 0, 0, 0.0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0))),
            child: Center(child: Text("1232")),
          ),
          Container(
            width: context.screenWidht(width: 1),
            height: context.screenHeight(height: .25),
            color: ColorName.mediumSeaGreen,
            child: Padding(
              padding: EdgeInsets.only(top: 90),
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
 */