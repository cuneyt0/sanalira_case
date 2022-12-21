import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sanaliracase/app/constant/app_string.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/register/viewmodel/register_viewmodel.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterViewModel _viewModel = getIt.get<RegisterViewModel>();
    return Scaffold(
        floatingActionButton: Observer(builder: (context) {
          return FloatingActionButton(onPressed: () {
            if (_viewModel.formKey.currentState != null &&
                _viewModel.formKey.currentState!.validate()) {
              print("OK");
            } else {
              print('No');
            }
          });
        }),
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
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: _membershipText(),
                    ),
                    Expanded(
                      flex: 3,
                      child: Observer(
                        builder: (context) {
                          return Form(
                            key: _viewModel.formKey,
                            child: Column(
                              children: [
                                ListTile(
                                  title: Text(
                                    name,
                                    style: TextStyle(
                                        color: ColorName.lightSilver,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  subtitle: Observer(
                                    builder: (context) {
                                      return _nameAndLastNameField(_viewModel,
                                          _viewModel.nameController);
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    lastName,
                                    style: TextStyle(
                                        color: ColorName.lightSilver,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  subtitle: Observer(
                                    builder: (context) {
                                      return _nameAndLastNameField(_viewModel,
                                          _viewModel.lastNameController);
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    email,
                                    style: TextStyle(
                                        color: ColorName.lightSilver,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  subtitle: Observer(
                                    builder: (context) {
                                      return _emailField(_viewModel);
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: Text(
                                    email,
                                    style: TextStyle(
                                        color: ColorName.lightSilver,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  subtitle: Observer(
                                    builder: (context) {
                                      return _emailField(_viewModel);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }

  TextFormField _emailField(RegisterViewModel _viewModel) {
    return TextFormField(
      controller: _viewModel.emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) => _viewModel.validateEmail(value.toString()),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: ColorName.antiFlashWhite,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.antiFlashWhite,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

TextFormField _nameAndLastNameField(
    RegisterViewModel _viewModel, TextEditingController? controller) {
  return TextFormField(
    controller: controller,
    validator: (value) =>
        _viewModel.nameAndLastNameValidation(value.toString()),
    cursorColor: Colors.black,
    decoration: InputDecoration(
      filled: true,
      fillColor: ColorName.antiFlashWhite,
      border: InputBorder.none,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorName.antiFlashWhite,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

Padding _membershipText() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, top: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              sanaLira,
              style: TextStyle(
                color: ColorName.mediumSeaGreen,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              yeniUyelik,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            )
          ],
        ),
        Text(
          sozlesmeImzala,
          style: TextStyle(
            color: ColorName.lightSilver,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}


/**
 * 
 * Expanded(
                      child: Observer(builder: (context) {
                        return ElevatedButton(
                          child: Text('Kaydet'),
                          onPressed: (() {
                            if (_viewModel.formKey.currentState != null &&
                                _viewModel.formKey.currentState!.validate()) {
                              print("OK");
                            } else {
                              print('No');
                            }
                          }),
                        );
                      }),
                    ),
 */
