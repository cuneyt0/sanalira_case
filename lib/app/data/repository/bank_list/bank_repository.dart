import 'package:sanaliracase/app/constant/app_string.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/app/data/remote/bank_list/service/i_bank_service.dart';
import 'package:sanaliracase/app/data/repository/bank_list/i_bank_repository.dart';
import 'package:sanaliracase/app/errors/services_error_model.dart';
import 'package:sanaliracase/core/network/freezed/result.dart';

class BankRepository extends IBankRepository {
  final IBankService iBankService;

  BankRepository({required this.iBankService});
  @override
  Future<Result<BankInfo, ServicesError>> getAssignment() async {
    try {
      final response = await iBankService.getAssignment();
      return response.when(
          success: Result.success,
          failure: (error) =>
              Result.failure(ServicesError(message: tNotFound)));
    } on ServicesError {
      return Result.failure(ServicesError(message: tNotFound));
    }
  }
}
