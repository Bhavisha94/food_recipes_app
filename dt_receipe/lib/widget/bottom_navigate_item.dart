import 'package:dt_receipe/cubit/cubit/bottom_item_cubit.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomItemCubit, BottomItemState>(
      listener: (context, state) {
        if (state is BottomItemInitial) {
          selectedIndex = state.selectedIndex;
        }
      },
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .09,
          color: ColorUtils.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              item(
                  context,
                  'home',
                  'Home',
                  20,
                  18,
                  () => context.read<BottomItemCubit>().setIndex(0),
                  selectedIndex,
                  0),
              item(
                  context,
                  'video',
                  'Video',
                  19,
                  19,
                  () => context.read<BottomItemCubit>().setIndex(1),
                  selectedIndex,
                  1),
              item(
                  context,
                  'meal',
                  'Meal Plan',
                  22,
                  22,
                  () => context.read<BottomItemCubit>().setIndex(2),
                  selectedIndex,
                  2),
              item(
                  context,
                  'favorite',
                  'Favorite',
                  20,
                  18.35,
                  () => context.read<BottomItemCubit>().setIndex(3),
                  selectedIndex,
                  3),
              item(
                  context,
                  'settings',
                  'Settings',
                  19.45,
                  20,
                  () => context.read<BottomItemCubit>().setIndex(4),
                  selectedIndex,
                  4),
            ],
          ),
        );
      },
    );
  }

  item(BuildContext context, String icon, String label, double width,
      double height, VoidCallback onTap, int selectedIndex, int itemIndex) {
    Color selectedItemBgColor = selectedIndex == itemIndex
        ? const Color(0xffFFF5EB)
        : ColorUtils.transparent;
    Color selectedItemColor =
        selectedIndex == itemIndex ? ColorUtils.orange : ColorUtils.brown;

    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.height * .08,
        height: MediaQuery.of(context).size.height * .09,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: selectedItemBgColor,
              child: SvgPicture.asset(
                'assets/images/$icon.svg',
                width: width,
                height: height,
                fit: BoxFit.fill,
                color: selectedItemColor,
              ),
            ),
            Text(
              label,
              style: textStyle.copyWith(fontSize: 11, color: selectedItemColor),
            )
          ],
        ),
      ),
    );
  }
}
