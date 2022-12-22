import 'package:flutter/material.dart';
import 'package:sanaliracase/app/presentation/component/text_component.dart';
import 'package:sanaliracase/app/presentation/register/screen/register.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class BankList extends StatelessWidget {
  const BankList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.antiFlashWhite,
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 32, right: 15),
        child: ListView.separated(
            itemBuilder: (context, index) => _infoList(
                  context,
                )[index],
            separatorBuilder: (context, index) => SizedBox(
                  height: context.screenHeight(height: 0.05),
                ),
            itemCount: _infoList(
              context,
            ).length),
      ),
    );
  }

  List<Widget> _infoList(
    BuildContext context,
  ) =>
      [
        _buttons(context),
        _userAccountMoney(),
        _liraText(),
      ];

  TextComponent _liraText() {
    return TextComponent(
      data: 'Türk lirası yatırmak için banka seçiniz.',
      color: ColorName.lightSilver,
    );
  }

  Card _userAccountMoney() {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(Assets.images.maskGroup.path),
        ),
        title: TextComponent(
          data: 'Türk Lirası',
          color: ColorName.darkGunmetal,
          fontWeight: FontWeight.w500,
        ),
        subtitle: TextComponent(
          data: 'TL',
          color: ColorName.lightSilver,
        ),
        trailing: TextComponent(
          data: '234 ₺',
          color: ColorName.darkGunmetal,
        ),
      ),
    );
  }

  Row _buttons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _iconButton(
          context: context,
          name: Assets.icons.leftArrow.keyName,
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Register()),
            (Route<dynamic> route) => false,
          ),
        ),
        Row(
          children: [
            _iconButton(
              context: context,
              name: Assets.icons.bell.keyName,
              onPressed: () => print('bildirim'),
            ),
            SizedBox(
              width: 15,
            ),
            _iconButton(
              context: context,
              name: Assets.icons.settings.keyName,
              onPressed: () => print('ayarlar'),
            ),
          ],
        )
      ],
    );
  }

  SizedBox _iconButton(
      {BuildContext? context, String? name, required void onPressed()}) {
    return SizedBox(
      height: context?.screenHeight(height: .05),
      width: context?.screenWidht(width: .11),
      child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(10),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
          ),
          onPressed: onPressed,
          label: Text(''),
          icon: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Center(
              child: Image.asset(
                '${name}',
                width: 14,
                fit: BoxFit.contain,
              ),
            ),
          )),
    );
  }
}
