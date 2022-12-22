import 'package:mobx/mobx.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/app/data/repository/bank_list/i_bank_repository.dart';
import 'package:sanaliracase/core/results/result_state.dart';

part 'bank_list_viewmodel.g.dart';

class BankListViewModel = _BankListViewModelBase with _$BankListViewModel;

abstract class _BankListViewModelBase with Store {
  final IBankRepository iBankRepository;

  _BankListViewModelBase({required this.iBankRepository});

  @observable
  ResultState<BankInfo> asignmentResultState = const ResultState.initial();

  Future<void> getAssignment() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    asignmentResultState = const ResultState.loading();
    final result = await iBankRepository.getAssignment();
    result.when(success: (data) {
      asignmentResultState = ResultState.completed(data);
    }, failure: (error) {
      asignmentResultState = ResultState.failed(error);
    });
  }
}
