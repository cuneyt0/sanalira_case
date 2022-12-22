import 'package:sanaliracase/app/client/network_client.dart';
import 'package:sanaliracase/app/data/remote/bank_list/model/bank_info.dart';
import 'package:sanaliracase/app/data/remote/bank_list/service/i_bank_service.dart';
import 'package:sanaliracase/core/network/freezed/network_error.dart';
import 'package:sanaliracase/core/network/freezed/result.dart';

class BankService extends IBankService {
  @override
  Future<Result<BankInfo, NetworkError>> getAssignment() async {
    final client = await NetworkClient.instance.networkClient();
    final response = await client
        .setGET()
        .setPath('/assignment')
        .setFunctionName(funcName: 'getAssignment')
        .execute<BankInfo, BankInfo>(BankInfo());

    return response;
  }
}
