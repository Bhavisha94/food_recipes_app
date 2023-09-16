part of 'youtube_video_cubit.dart';

abstract class YoutubeVideoState {}

class YoutubeVideoInitial extends YoutubeVideoState {}

class YoutubeVideoLoading extends YoutubeVideoState {}

class PlayYoutubeVideoIndex extends YoutubeVideoState {
  final int index;

  PlayYoutubeVideoIndex({required this.index});
}
