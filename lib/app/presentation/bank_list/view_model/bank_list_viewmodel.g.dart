// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_list_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BankListViewModel on _BankListViewModelBase, Store {
  late final _$asignmentResultStateAtom = Atom(
      name: '_BankListViewModelBase.asignmentResultState', context: context);

  @override
  ResultState<BankInfo> get asignmentResultState {
    _$asignmentResultStateAtom.reportRead();
    return super.asignmentResultState;
  }

  @override
  set asignmentResultState(ResultState<BankInfo> value) {
    _$asignmentResultStateAtom.reportWrite(value, super.asignmentResultState,
        () {
      super.asignmentResultState = value;
    });
  }

  late final _$imagesAtom =
      Atom(name: '_BankListViewModelBase.images', context: context);

  @override
  List<String>? get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(List<String>? value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  @override
  String toString() {
    return '''
asignmentResultState: ${asignmentResultState},
images: ${images}
    ''';
  }
}
