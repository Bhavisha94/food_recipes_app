import 'package:dt_receipe/screens/add_recipe.dart';
import 'package:dt_receipe/screens/became_chef.dart';
import 'package:dt_receipe/screens/chief.dart';
import 'package:dt_receipe/screens/dashboard.dart';
import 'package:dt_receipe/screens/details_screen.dart';
import 'package:dt_receipe/screens/edit_profile.dart';
import 'package:dt_receipe/screens/error.dart';
import 'package:dt_receipe/screens/internet_connection.dart';
import 'package:dt_receipe/screens/intro_screen.dart';
import 'package:dt_receipe/screens/login.dart';
import 'package:dt_receipe/screens/profile.dart';
import 'package:dt_receipe/screens/sign_up.dart';
import 'package:dt_receipe/screens/splashscreen.dart';
import 'package:dt_receipe/screens/youtube_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const Splashscreen());

      case '/intro':
        return MaterialPageRoute(builder: (_) => const IntroScreens());

      case '/login':
        return MaterialPageRoute(builder: (_) => const Login());

      case '/signUp':
        return MaterialPageRoute(builder: (_) => const SignUp());

      case '/dashboard':
        return MaterialPageRoute(builder: (_) => const Dashboard());

      case '/becomeChef':
        return MaterialPageRoute(builder: (_) => const BecomeChefScreen());

      case '/cheif':
        return MaterialPageRoute(builder: (_) => const ChiefScreen());

      case '/cheifProfile':
        return MaterialPageRoute(builder: (_) => const CheifProfile());

      case '/editProfile':
        return MaterialPageRoute(builder: (_) => const EditProfile());

      case '/addRecipe':
        return MaterialPageRoute(builder: (_) => const AddRecipeScreen());

      case '/detailsScreen':
        return MaterialPageRoute(builder: (_) => const DetailsScreen());

      case '/internet':
        return MaterialPageRoute(builder: (_) => const InternetConnection());

      case '/youtubePlayerVideo':
        if (arg is String) {
          return MaterialPageRoute(
              builder: (_) => YoutubePlayerVideo(
                    videoId: arg,
                  ));
        }
        return MaterialPageRoute(builder: (_) => const ErrorPage());

      default:
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}
