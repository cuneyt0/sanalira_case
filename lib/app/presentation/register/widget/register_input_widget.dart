import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sanaliracase/app/constant/app_string.dart';
import 'package:sanaliracase/app/presentation/component/text/text_component.dart';
import 'package:sanaliracase/app/presentation/register/viewmodel/register_viewmodel.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

Positioned registerInputWidget(
    BuildContext context, RegisterViewModel _viewModel) {
  return Positioned(
    bottom: -30,
    child: Container(
      width: context.screenWidht(width: 1),
      height: context.screenHeight(height: .9),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: _membershipText(),
          ),
          Expanded(
            flex: 6,
            child: Observer(
              builder: (context) {
                return Form(
                  key: _viewModel.formKey,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListTile(
                          title: Padding(
                            padding: const EdgeInsets.only(top: 0),
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
                      ),
                      Expanded(
                        child: ListTile(
                          title: TextComponent(
                              data: lastNameText,
                              color: ColorName.lightSilver,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                          subtitle: Observer(
                            builder: (context) {
                              return _nameAndLastNameField(
                                  _viewModel, _viewModel.lastNameController);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: TextComponent(
                              data: emailText,
                              color: ColorName.lightSilver,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                          subtitle: Observer(
                            builder: (context) {
                              return _emailField(_viewModel);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: TextComponent(
                              data: numberText,
                              color: ColorName.lightSilver,
                              fontSize: 13,
                              fontWeight: FontWeight.w300),
                          subtitle: Observer(
                            builder: (context) {
                              return _phoneField(_viewModel);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15.0, top: 30),
                          child: _contractText(_viewModel),
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
  );
}

Observer _loginButton(RegisterViewModel _viewModel) {
  return Observer(
    builder: (context) {
      return SizedBox(
        width: context.screenWidht(width: .9),
        height: context.screenHeight(height: .06),
        child: ElevatedButton(
          child: TextComponent(
            data: login,
            color: ColorName.white,
            fontWeight: FontWeight.bold,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorName.iguanaGreen,
          ),
          onPressed: () => _viewModel.login(),
        ),
      );
    },
  );
}

Column _contractText(RegisterViewModel _viewModel) {
  return Column(
    children: [
      Flexible(
        child: Row(
          children: [
            Flexible(
              child: Observer(
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 20,
                      child: InkWell(
                          onTap: () => _inkwellOnTap(_viewModel),
                          child: _viewModel.isSelected == false
                              ? Image.asset(
                                  Assets.icons.rectangle.keyName,
                                  width: 24,
                                  fit: BoxFit.fill,
                                )
                              : Icon(
                                  Icons.done,
                                  color: Colors.blue,
                                )),
                    ),
                  );
                },
              ),
            ),
            Flexible(
              flex: 7,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: textSpan1,
                      style: TextStyle(
                        color: ColorName.darkGunmetal,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(text: ' '),
                    TextSpan(
                      text: textSpan2,
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
                          color: ColorName.iguanaGreen,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: textSpan3,
                      style: TextStyle(
                        color: ColorName.darkGunmetal,
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Flexible(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: _loginButton(_viewModel),
        ),
      ),
    ],
  );
}

void _inkwellOnTap(RegisterViewModel _viewModel) {
  if (_viewModel.isSelected == false) {
    _viewModel.isSelected = true;
  } else {
    _viewModel.isSelected = false;
  }
}

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
              data: newUserText,
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
