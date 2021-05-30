import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/usecases.dart';
import 'bloc/states.dart';

export 'bloc/states.dart';

@injectable
class SubscriptionsScreenCubit extends Cubit<SubscriptionsScreenState> {
  final SubscribingUseCase _getSubscriptions;

  SubscriptionsScreenCubit(this._getSubscriptions)
      : super(SubscriptionsScreenState.loading()) {
    _getSubscriptions.own
        .listen((e) {
          if (e.subscriptions.isEmpty) {
            return emit(SubscriptionsScreenState.empty());
          }
          emit(SubscriptionsScreenState.loaded(e.subscriptions));
        });
  }
}
