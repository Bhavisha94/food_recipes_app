import 'package:dt_receipe/utils/list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

part 'youtube_video_state.dart';

class YoutubeVideoCubit extends Cubit<YoutubeVideoState> {
  YoutubeVideoCubit() : super(YoutubeVideoInitial());

  playIndex(int idx) {
    emit(YoutubeVideoLoading());
    emit(PlayYoutubeVideoIndex(index: idx));
  }
}
