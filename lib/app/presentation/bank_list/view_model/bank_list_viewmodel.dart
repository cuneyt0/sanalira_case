import 'package:mobx/mobx.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/app/data/repository/bank_list/i_bank_repository.dart';
import 'package:sanaliracase/core/cache/cache_manager.dart';
import 'package:sanaliracase/core/results/result_state.dart';
import 'package:sanaliracase/gen/assets.gen.dart';

part 'bank_list_viewmodel.g.dart';

class BankListViewModel = _BankListViewModelBase with _$BankListViewModel;

abstract class _BankListViewModelBase with Store {
  final IBankRepository iBankRepository;

  _BankListViewModelBase({required this.iBankRepository});

  @observable
  ResultState<BankInfo> asignmentResultState = const ResultState.initial();
  @observable
  @observable
  CacheManager? cacheManager = CacheManager();
  @observable
  int currentIndex = 0;
  @observable
  List<String>? images = [
    Assets.images.albaraka.keyName,
    Assets.images.ziraatBankasiLogo.keyName,
    Assets.images.vakifbankLogo.keyName,
    Assets.images.albaraka.keyName,
    Assets.images.ziraatBankasiLogo.keyName,
    Assets.images.vakifbankLogo.keyName,
    Assets.images.vakifbankLogo.path,
  ];

  @action
  Future<void> logout() async {
    cacheManager?.logout();
  }

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
