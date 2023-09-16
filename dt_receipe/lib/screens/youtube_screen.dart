import 'dart:developer';

import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerVideo extends StatefulWidget {
  final String videoId;
  const YoutubePlayerVideo({super.key, required this.videoId});

  @override
  State<YoutubePlayerVideo> createState() => _YoutubePlayerVideoState();
}

class _YoutubePlayerVideoState extends State<YoutubePlayerVideo> {
  late YoutubePlayerController playerController;

  @override
  void initState() {
    setState(() {
      SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
    });
    load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        navigate();
        return false;
      },
      child: Scaffold(
        backgroundColor: ColorUtils.bgColor,
        body: YoutubePlayer(
          controller: playerController,
        ),
      ),
    );
  }

  load() async {
    String id = YoutubePlayer.convertUrlToId(widget.videoId)!;
    playerController = YoutubePlayerController(
        initialVideoId: id,
        flags: const YoutubePlayerFlags(
          forceHD: true,
        ));
  }

  navigate() {
    log(MediaQuery.of(context).orientation.toString());
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      setState(() {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
      });
    }
    Navigator.pop(context);
  }

  @override
  void dispose() {
    playerController.dispose();
    super.dispose();
  }
}
