import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/usecases.dart';

import 'bloc/states.dart';

export 'bloc/states.dart';

class SubscriptionsScreenCubit extends Cubit<SubscriptionsScreenState> {
  final GetSubscriptionsUseCase _getSubscriptions;

  SubscriptionsScreenCubit(this._getSubscriptions)
      : super(SubscriptionsScreenState.loaded(_getSubscriptions()));
}
