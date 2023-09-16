import 'dart:developer';

import 'package:dt_receipe/cubit/youtube/cubit/youtube_video_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/play_icon.dart';
import 'package:dt_receipe/widget/search_appbar.dart';
import 'package:dt_receipe/widget/time_widget.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late YoutubePlayerController controller;
  bool isPlaying = false;
  int videoIndex = -1;

  @override
  void initState() {
    list(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: BlocConsumer<YoutubeVideoCubit, YoutubeVideoState>(
            listener: (context, state) {
              log(state.toString());
              if (state is PlayYoutubeVideoIndex) {
                videoIndex = state.index;
                log(videoIndex.toString());
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  searchAppbar(text: 'Favourite Recipe'),
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: favoriteList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child:
                              //  videoIndex == index
                              // ? ClipRRect(
                              //     borderRadius: BorderRadius.circular(10),
                              //     child: YoutubePlayer(
                              //       controller: controller,
                              //       // aspectRatio: 13 / 6,
                              //     ),
                              //   )
                              // :
                              InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/youtubePlayerVideo',
                                  arguments: youtubeRecipeList[index]);
                            },
                            child: Stack(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 148,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/${favoriteList[index].recipe}.png'),
                                            fit: BoxFit.fill)),
                                    child: PlayWidget()),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 148,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.black.withOpacity(.3)),
                                ),
                                Positioned(
                                  bottom:
                                      MediaQuery.of(context).size.height * .005,
                                  left: MediaQuery.of(context).size.width * .03,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const TimeWidget(
                                        color: ColorUtils.white,
                                      ),
                                      Text(
                                        favoriteList[index].name.toString(),
                                        style: textStyle.copyWith(
                                            color: ColorUtils.white,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                                Positioned(
                                    bottom: MediaQuery.of(context).size.height *
                                        .01,
                                    right:
                                        MediaQuery.of(context).size.width * .03,
                                    child: SvgPicture.asset(
                                        'assets/images/pen.svg')),
                                Positioned(
                                    right:
                                        MediaQuery.of(context).size.width * .03,
                                    top: MediaQuery.of(context).size.height *
                                        .012,
                                    child: const TotalFavoriteWidget(
                                        img: 'star', color: Colors.white))
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  list(int index) {
    log("Call");
  }
}
