import 'package:dt_receipe/cubit/category/cubit/categories_cubit.dart';
import 'package:dt_receipe/cubit/cheif_list/cubit/chief_list_cubit.dart';
import 'package:dt_receipe/cubit/cubit/bottom_item_cubit.dart';
import 'package:dt_receipe/cubit/food_type/cubit/food_type_cubit.dart';
import 'package:dt_receipe/cubit/internet/cubit/check_internet_cubit.dart';
import 'package:dt_receipe/cubit/intro_screen/cubit/intro_screen_cubit.dart';
import 'package:dt_receipe/cubit/meal_plan/cubit/meal_plan_cubit.dart';
import 'package:dt_receipe/cubit/new_recipe_list.dart/cubit/recipe_list_cubit.dart';
import 'package:dt_receipe/cubit/youtube/cubit/youtube_video_cubit.dart';
import 'package:dt_receipe/route.dart';
import 'package:dt_receipe/screens/dashboard.dart';
import 'package:dt_receipe/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomItemCubit>(
          create: (_) => BottomItemCubit(),
        ),
        BlocProvider<IntroScreenCubit>(
          create: (_) => IntroScreenCubit(),
        ),
        BlocProvider<ChiefListCubit>(create: (_) => ChiefListCubit()),
        BlocProvider<MealPlanCubit>(create: (_) => MealPlanCubit()),
        BlocProvider<FoodTypeCubit>(create: (_) => FoodTypeCubit()),
        BlocProvider<CategoriesCubit>(create: (_) => CategoriesCubit()),
        BlocProvider<CheckInternetCubit>(
          create: (_) => CheckInternetCubit(),
        ),
        BlocProvider<RecipeListCubit>(create: (_) => RecipeListCubit()),
        BlocProvider<YoutubeVideoCubit>(create: (_) => YoutubeVideoCubit())
      ],
      child: MaterialApp(
        title: 'Food Recipes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Login(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
