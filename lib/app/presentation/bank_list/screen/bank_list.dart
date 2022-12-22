import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/bank_list/screen/bottom_sheet.dart';
import 'package:sanaliracase/app/presentation/bank_list/view_model/bank_list_viewmodel.dart';
import 'package:sanaliracase/app/presentation/component/text_component.dart';
import 'package:sanaliracase/app/presentation/register/screen/register.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/assets.gen.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class BankList extends StatefulWidget {
  const BankList({super.key});

  @override
  State<BankList> createState() => _BankListState();
}

class _BankListState extends State<BankList> {
  final BankListViewModel _viewmodel = getIt.get<BankListViewModel>();
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.antiFlashWhite,
      bottomNavigationBar: _bottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 32, right: 15),
        child: ListView.separated(
            itemBuilder: (context, index) =>
                _infoList(context: context, viewModel: _viewmodel)[index],
            separatorBuilder: (context, index) => SizedBox(
                  height: context.screenHeight(height: 0.05),
                ),
            itemCount:
                _infoList(context: context, viewModel: _viewmodel).length),
      ),
    );
  }

  Observer _bottomNavigationBar() {
    return Observer(builder: (context) {
      return BottomNavigationBar(
          currentIndex: _viewmodel.currentIndex,
          onTap: (index) => _viewmodel.currentIndex = index,
          items: [
            BottomNavigationBarItem(
                label: '',
                icon: Icon(
                  Icons.home,
                  color: _viewmodel.currentIndex == 0
                      ? Colors.blue
                      : ColorName.lightSilver,
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Image.asset(Assets.icons.transaction.keyName,
                    width: 20,
                    height: 20,
                    color: _viewmodel.currentIndex == 1
                        ? Colors.blue
                        : ColorName.lightSilver)),
            BottomNavigationBarItem(
                label: '',
                icon: Container(
                  height: context.screenHeight(height: .04),
                  width: context.screenWidht(width: .1), // 44,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _viewmodel.currentIndex == 2
                        ? ColorName.white
                        : ColorName.darkGunmetal,
                  ),
                  alignment: Alignment.center, // This is needed
                  child: Image.asset(
                    Assets.icons.layer.keyName,
                    color: _viewmodel.currentIndex == 2
                        ? Colors.blue
                        : ColorName.white,
                    fit: BoxFit.contain,
                    width: context.screenWidht(width: .05),
                  ),
                )),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.credit_card_sharp,
                    color: _viewmodel.currentIndex == 3
                        ? Colors.blue
                        : ColorName.lightSilver)),
            BottomNavigationBarItem(
                label: '',
                icon: Icon(Icons.person_outline,
                    color: _viewmodel.currentIndex == 4
                        ? Colors.blue
                        : ColorName.lightSilver)),
          ]);
    });
  }

  List<Widget> _infoList(
          {BuildContext? context, BankListViewModel? viewModel}) =>
      [
        _buttons(context!),
        _userAccountMoney(),
        _liraText(),
        SizedBox(
          height: context.screenHeight(height: .5),
          width: context.screenWidht(width: 1),
          child: Observer(
            builder: (context) => viewModel!.asignmentResultState.maybeWhen(
              failed: (error) => _bankInfoList(viewModel: viewModel),
              orElse: LinearProgressIndicator.new,
              completed: (data) =>
                  _bankInfoList(data: data, viewModel: viewModel),
            ),
          ),
        ),
      ];

  Widget _bankInfoList({
    BankInfo? data,
    required BankListViewModel? viewModel,
  }) {
    return ListView.builder(
      itemCount: data?.data?.length,
      itemBuilder: ((context, index) {
        return Card(
          child: ListTile(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                  backgroundColor: Colors.white,
                  builder: (context) => BottomSheetScreen(
                        data: data?.data?[index],
                      ));
            },
            leading: DottedBorder(
              borderType: BorderType.RRect,
              radius: Radius.circular(5),
              dashPattern: [6, 6],
              color: ColorName.lightSilver,
              strokeWidth: 1,
              child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(
                          viewModel!.images![index],
                        )),
                  ),
                  child: Text('')),
            ),
            title: TextComponent(
              data: data?.data?[index]?.bankName,
            ),
            subtitle: TextComponent(
              data: 'Havale / EFT ile para gönderin.',
              color: ColorName.lightSilver,
            ),
          ),
        );
      }),
    );
  }

/**
 * 
 * : ClipRRect(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Image.asset(
                        viewModel!.images![index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  ))
 */
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
