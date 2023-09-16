import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_item_state.dart';

class BottomItemCubit extends Cubit<BottomItemState> {
  BottomItemCubit() : super(BottomItemInitial(selectedIndex: 0));

  setIndex(int index) {
    emit(BottomItemInitial(selectedIndex: index));
  }
}
