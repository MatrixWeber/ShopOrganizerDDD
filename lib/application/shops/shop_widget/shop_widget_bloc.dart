import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shop_widget_event.dart';
part 'shop_widget_state.dart';
part 'shop_widget_bloc.freezed.dart';

@injectable
class ShopWidgetBloc extends Bloc<ShopWidgetEvent, ShopWidgetState> {
  ShopWidgetBloc() : super(const ShopWidgetState.initial());

  @override
  Stream<ShopWidgetState> mapEventToState(
    ShopWidgetEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield const ShopWidgetState.initial();
    }, inProgress: (e) async* {
      yield ShopWidgetState.actionInProgress(e.percent);
    });
  }
}
