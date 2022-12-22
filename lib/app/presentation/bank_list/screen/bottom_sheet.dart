import 'package:flutter/material.dart';
import 'package:sanaliracase/app/constant/app_string.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/data_model.dart';
import 'package:sanaliracase/app/getIt/get_it.dart';
import 'package:sanaliracase/app/presentation/bank_list/view_model/bank_list_viewmodel.dart';
import 'package:sanaliracase/app/presentation/component/text/text_component.dart';
import 'package:sanaliracase/core/copy_clipboard/copy_clipboard.dart';
import 'package:sanaliracase/core/screen_size/screen_size_helper.dart';
import 'package:sanaliracase/gen/colors.gen.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({this.data, super.key});
  final DataModel? data;

  @override
  Widget build(BuildContext context) {
    final BankListViewModel _viewmodel = getIt.get<BankListViewModel>();
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 30),
      child: ListView.separated(
        itemBuilder: (context, index) =>
            _infoList(context: context, viewModel: _viewmodel)[index],
        separatorBuilder: (context, index) => SizedBox(
          height: context.screenHeight(height: 0.01),
        ),
        itemCount: _infoList(context: context, viewModel: _viewmodel).length,
      ),
    );
  }

  List<Widget> _infoList(
          {BuildContext? context, BankListViewModel? viewModel}) =>
      [
        ListTile(
          title: TextComponent(
              data: bankAccountName,
              color: ColorName.lightSilver,
              fontSize: 12,
              fontWeight: FontWeight.w300),
          subtitle: _copyTextField(
              onPressed: () => CopyClipBoard.copy(
                    data?.bankAccountName.toString(),
                  )),
        ),
        ListTile(
          title: TextComponent(
              data: iban,
              color: ColorName.lightSilver,
              fontSize: 12,
              fontWeight: FontWeight.w300),
          subtitle: _copyTextField(
              onPressed: () => CopyClipBoard.copy(
                    data?.bankIban.toString(),
                  )),
        ),
        ListTile(
          title: TextComponent(
              data: description,
              color: ColorName.lightSilver,
              fontSize: 12,
              fontWeight: FontWeight.w300),
          subtitle: _copyTextField(
              onPressed: () => CopyClipBoard.copy(
                    data?.descriptionNo.toString(),
                  )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: _firstInfoMessage(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: _secondInfoMessage(),
        ),
      ];

  Card _secondInfoMessage() {
    return Card(
        color: ColorName.snow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: infoMessage,
                    style: TextStyle(color: ColorName.tartOrange)),
              ],
            ),
          ),
        ));
  }

  Card _firstInfoMessage() {
    return Card(
      color: ColorName.antiFlashWhite,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: constantMessage,
                  style: TextStyle(color: ColorName.lavenderGray)),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField _copyTextField({required void onPressed()}) {
    return TextFormField(
      readOnly: true,
      enableInteractiveSelection: false,
      keyboardType: TextInputType.none,
      initialValue: data?.bankAccountName.toString(),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          icon: Icon(
            Icons.content_copy_outlined,
            color: ColorName.iguanaGreen,
          ),
          onPressed: onPressed,
        ),
        filled: true,
        fillColor: ColorName.antiFlashWhite,
        border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: ColorName.antiFlashWhite,
            ),
            borderRadius: BorderRadius.circular(5.0)),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorName.antiFlashWhite,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: ColorName.antiFlashWhite,
          ),
        ),
      ),
    );
  }
}
