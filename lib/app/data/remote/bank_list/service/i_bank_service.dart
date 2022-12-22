import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/core/network/freezed/network_error.dart';
import 'package:sanaliracase/core/network/freezed/result.dart';

abstract class IBankService {
  Future<Result<BankInfo, NetworkError>> getAssignment();
}
