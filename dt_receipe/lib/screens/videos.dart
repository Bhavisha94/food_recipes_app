import 'dart:developer';

import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:dt_receipe/widget/play_icon.dart';
import 'package:dt_receipe/widget/search_appbar.dart';
import 'package:dt_receipe/widget/time_widget.dart';
import 'package:dt_receipe/widget/total_favorite_widget.dart';
import 'package:flutter/material.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          searchAppbar(text: 'Videos'),
          Expanded(
            child: GridView.builder(
              // shrinkWrap: true,
              // scrollDirection: Axis.vertical,
              itemCount: videoList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Container(
                          height: 114,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/${videoList[index].image}.png'),
                                  fit: BoxFit.cover)),
                          child: PlayWidget(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, '/youtubePlayerVideo',
                                  arguments: videoList[index].url);
                            },
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .007),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .2,
                                  child: Text(
                                    videoList[index].name.toString(),
                                    overflow: TextOverflow.ellipsis,
                                    style: textStyle.copyWith(
                                        color: ColorUtils.brownText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Text(
                                  '130 Cal',
                                  style: textStyle.copyWith(
                                      fontSize: 10, color: ColorUtils.textGrey),
                                )
                              ],
                            ),
                            SizeUtils.verticalSpacing(
                                height:
                                    MediaQuery.of(context).size.height * .005),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                TimeWidget(color: ColorUtils.textGrey),
                                TotalFavoriteWidget(
                                    img: 'star_filled',
                                    color: ColorUtils.textGrey)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SizeUtils.verticalSpacing(
              height: MediaQuery.of(context).size.height * .01)
        ],
      ),
    ));
  }
}
