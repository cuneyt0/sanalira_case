import 'package:flutter/material.dart';
import 'package:sanaliracase/app/errors/base_errors_model.dart';

import 'result_state.dart';

class ResultStateWidget<T> extends StatelessWidget {
  const ResultStateWidget(
      {required this.resultState,
      required this.completed,
      this.failed,
      this.isShowButtonErrorScreen,
      Key? key})
      : super(key: key);
  final ResultState<T> resultState;
  final Widget Function(T data) completed;
  final Widget Function(BaseErrorsModel error)? failed;
  final bool? isShowButtonErrorScreen;
  @override
  Widget build(BuildContext context) => resultState.when(
      initial: () => const Center(child: CircularProgressIndicator.adaptive()),
      loading: () => const Center(child: CircularProgressIndicator.adaptive()),
      completed: completed,
      failed: failed ??
          (error) => Center(
                child: Text('${error.message}'),
              ));
}
