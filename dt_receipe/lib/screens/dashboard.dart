import 'package:dt_receipe/cubit/cubit/bottom_item_cubit.dart';
import 'package:dt_receipe/screens/favorite.dart';
import 'package:dt_receipe/screens/home.dart';
import 'package:dt_receipe/screens/meal.dart';
import 'package:dt_receipe/screens/settings.dart';
import 'package:dt_receipe/screens/videos.dart';
import 'package:dt_receipe/utils/colors.dart';
import 'package:dt_receipe/widget/bottom_navigate_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  List<Widget> list = const [
    Home(),
    Videos(),
    MealPlan(),
    Favorite(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.bgColor,
      body: BlocConsumer<BottomItemCubit, BottomItemState>(
        listener: (context, state) {
          if (state is BottomItemInitial) {
            selectedIndex = state.selectedIndex;
          }
        },
        builder: (context, state) {
          return list[selectedIndex];
        },
      ),
      bottomNavigationBar: const BottomNavigationBarWidget(),
    );
  }
}
