import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sanaliracase/app/constant/app_string.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/component/text_component.dart';
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
                    flex: 7,
                    child: Observer(
                      builder: (context) {
                        return Form(
                          key: _viewModel.formKey,
                          child: Column(
                            children: [
                              ListTile(
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 13),
                                  child: TextComponent(
                                      data: nameText,
                                      color: ColorName.lightSilver,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                                subtitle: Observer(
                                  builder: (context) {
                                    return _nameAndLastNameField(
                                        _viewModel, _viewModel.nameController);
                                  },
                                ),
                              ),
                              ListTile(
                                title: TextComponent(
                                    data: lastNameText,
                                    color: ColorName.lightSilver,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                subtitle: Observer(
                                  builder: (context) {
                                    return _nameAndLastNameField(_viewModel,
                                        _viewModel.lastNameController);
                                  },
                                ),
                              ),
                              ListTile(
                                title: TextComponent(
                                    data: emailText,
                                    color: ColorName.lightSilver,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                subtitle: Observer(
                                  builder: (context) {
                                    return _emailField(_viewModel);
                                  },
                                ),
                              ),
                              ListTile(
                                title: TextComponent(
                                    data: numberText,
                                    color: ColorName.lightSilver,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300),
                                subtitle: Observer(
                                  builder: (context) {
                                    return _phoneField(_viewModel);
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Observer(builder: (context) {
                                          return ElevatedButton.icon(
                                              style: ElevatedButton.styleFrom(
                                                padding: EdgeInsets.all(10),
                                                backgroundColor: Colors.white,
                                              ),
                                              onPressed: (() {
                                                if (_viewModel.isSelected ==
                                                    false) {
                                                  _viewModel.isSelected = true;
                                                } else {
                                                  _viewModel.isSelected = false;
                                                }
                                              }),
                                              label: Text(''),
                                              icon:
                                                  _viewModel.isSelected == false
                                                      ? Image.asset(
                                                          Assets.icons.rectangle
                                                              .keyName,
                                                          width: 24,
                                                          fit: BoxFit.fill,
                                                        )
                                                      : Icon(
                                                          Icons.done,
                                                          color: Colors.blue,
                                                        ));
                                        }),
                                        RichText(
                                            text: TextSpan(children: [
                                          TextSpan(
                                              text: 'Hesabınızı olustururken ',
                                              style: TextStyle(
                                                  color: Colors.black)),
                                          TextSpan(text: ' '),
                                          TextSpan(
                                              text: 'sözleşme ve koşulları\n',
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () async {
                                                  //Bakılacak.
                                                  /* var url =
                                                      'https://www.google.com/';
                                                  if (await canLaunch(url)) {
                                                    await launch(url);
                                                  } else {
                                                    throw 'Sayfa geçersiz';
                                                  }*/
                                                },
                                              style: TextStyle(
                                                color: ColorName.mediumSeaGreen,
                                              )),
                                          TextSpan(
                                              text:
                                                  'kabul etmeniz gerekmektedir.',
                                              style: TextStyle(
                                                  color: Colors.black))
                                        ])),
                                      ],
                                    ),
                                  ],
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
      ),
    );
  }

  /**
   * 
   * IconButton(
                                        color: Colors.blue,
                                        onPressed: (() {
                                          if (_viewModel.isSelected == false) {
                                            _viewModel.isSelected = true;
                                          } else {
                                            _viewModel.isSelected = false;
                                          }
                                        }),
                                        icon: _viewModel.isSelected == false
                                            ? Icon(Icons.delete)
                                            : Icon(Icons.done));
   */

  IntlPhoneField _phoneField(RegisterViewModel _viewModel) {
    return IntlPhoneField(
      controller: _viewModel.numberController,
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
      initialCountryCode: 'TR',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
    );
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
    padding: const EdgeInsets.only(left: 15, top: 41),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TextComponent(
              data: sanaLiraText,
              color: ColorName.mediumSeaGreen,
              fontWeight: FontWeight.bold,
            ),
            TextComponent(
              data: yeniUyelikText,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: TextComponent(
            data: sozlesmeImzalaText,
            color: ColorName.lightSilver,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
