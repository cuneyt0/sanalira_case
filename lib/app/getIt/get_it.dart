import 'package:get_it/get_it.dart';
import 'package:sanaliracase/app/presentation/register/viewmodel/register_viewmodel.dart';

final getIt = GetIt.instance;

void setupGetIT() {
  setupViewModel();
  setupRepository();
  setupServices();
}

void setupViewModel() {
  getIt.registerLazySingleton<RegisterViewModel>(() => RegisterViewModel());
}

void setupRepository() {}

void setupServices() {}
