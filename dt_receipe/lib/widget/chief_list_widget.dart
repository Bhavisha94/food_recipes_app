import 'package:dt_receipe/cubit/cheif_list/cubit/chief_list_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/list.dart';
import 'package:dt_receipe/utils/size.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class ChiefListWidget extends StatelessWidget {
  ChiefListWidget({super.key});

  int chiefIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 115,
      child: ListView.builder(
        itemCount: chiefList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 7),
            child: BlocConsumer<ChiefListCubit, ChiefListState>(
              listener: (context, state) {
                if (state is SelectedChief) {
                  chiefIndex = state.index;
                }
              },
              builder: (context, state) {
                return InkWell(
                  onTap: () =>
                      context.read<ChiefListCubit>().selectedIndex(index),
                  child: Stack(
                    children: [
                      const SizedBox(
                        width: 98,
                        height: 115,
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 98,
                          height: 98,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: chiefIndex == index
                                  ? Border.all(color: ColorUtils.orange)
                                  : null,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                chiefList[index].name,
                                style: textStyle.copyWith(
                                    fontSize: 9,
                                    color: ColorUtils.brownText,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/star_filled.svg',
                                    width: 10,
                                    height: 10,
                                  ),
                                  SizeUtils.horizontalSpacing(width: 7),
                                  Text(
                                    '4.8',
                                    style: textStyle.copyWith(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 10,
                                        color: ColorUtils.textGrey),
                                  ),
                                ],
                              ),
                              SizeUtils.verticalSpacing(
                                  height:
                                      MediaQuery.of(context).size.height * .01),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 98,
                        height: 56,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: chiefIndex == index
                                ? ColorUtils.orange
                                : Colors.transparent,
                            radius: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Image.asset(
                                'assets/images/${chiefList[index].image}.png',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
