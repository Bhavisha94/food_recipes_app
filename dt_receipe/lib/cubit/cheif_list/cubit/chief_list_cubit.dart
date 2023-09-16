import 'package:flutter_bloc/flutter_bloc.dart';

part 'chief_list_state.dart';

class ChiefListCubit extends Cubit<ChiefListState> {
  ChiefListCubit() : super(ChiefListInitial());

  selectedIndex(int value) {
    emit(SelectedChief(index: value));
  }
}
