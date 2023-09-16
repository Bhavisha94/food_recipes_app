import 'package:flutter_bloc/flutter_bloc.dart';

part 'intro_screen_state.dart';

class IntroScreenCubit extends Cubit<IntroScreenState> {
  IntroScreenCubit() : super(IntroScreenInitial(page: 0));

  pageIndex(int index) {
    emit(IntroScreenInitial(page: index));
  }
}
