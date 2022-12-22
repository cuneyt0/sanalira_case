import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/app/errors/services_error_model.dart';
import 'package:sanaliracase/core/network/freezed/result.dart';

abstract class IBankRepository {
  Future<Result<BankInfo, ServicesError>> getAssignment();
}
