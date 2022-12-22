import 'package:get_it/get_it.dart';
import 'package:sanaliracase/app/data/remote/bank_list/service/bank_service.dart';
import 'package:sanaliracase/app/data/remote/bank_list/service/i_bank_service.dart';
import 'package:sanaliracase/app/data/repository/bank_list/bank_repository.dart';
import 'package:sanaliracase/app/data/repository/bank_list/i_bank_repository.dart';
import 'package:sanaliracase/app/presentation/bank_list/view_model/bank_list_viewmodel.dart';
import 'package:sanaliracase/app/presentation/register/viewmodel/register_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupViewModel();
  setupRepository();
  setupServices();
}

void setupViewModel() {
  getIt
    ..registerLazySingleton<RegisterViewModel>(() => RegisterViewModel())
    ..registerLazySingleton<BankListViewModel>(
        () => BankListViewModel(iBankRepository: getIt()));
}

void setupRepository() {
  getIt
    ..registerLazySingleton<IBankRepository>(
        () => BankRepository(iBankService: getIt()));
}

void setupServices() {
  getIt..registerLazySingleton<IBankService>(BankService.new);
}
