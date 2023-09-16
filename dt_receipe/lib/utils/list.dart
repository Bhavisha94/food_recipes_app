import 'package:dt_receipe/model/chief.dart';
import 'package:dt_receipe/model/date.dart';
import 'package:dt_receipe/model/recipe_model.dart';
import 'package:dt_receipe/model/video.dart';
import 'package:dt_receipe/widget/textspan_widget.dart';
import 'package:flutter/material.dart';

List<String> categoryName = [
  'Gujarati',
  'Punjabi',
  'South Indian',
  'Kathiyavadi',
  'Chinese',
  'Italian',
  'Gujarati',
  'Punjabi',
  'South Indian',
  'Kathiyavadi',
  'Chinese',
  'Italian'
];

List<String> categoryImg = [
  'gujarati',
  'punjabi',
  'south_indian',
  'kathiyawadi',
  'chinese',
  'italian',
  'gujarati',
  'punjabi',
  'south_indian',
  'kathiyawadi',
  'chinese',
  'italian'
];

List<double> heigth = [27, 30, 28, 30, 26, 22, 27, 30, 28, 30, 26, 22];

List<String> recipes = ['recipe1', 'recipe2', 'pizza'];

List<String> recipesName = ['Chana Masala', 'Kabab', 'Pizza'];

List<Widget> introText = [
  const TextSpanWidget(
      text1: 'Read ', text2: 'the recipe \nand make ', text3: 'delicious food'),
  const TextSpanWidget(
      text1: 'Eat Food ', text2: 'that \nIs Healthy ', text3: 'For you'),
  const TextSpanWidget(
      text1: 'Get all ', text2: 'healthy recipes \nthat ', text3: 'you need'),
];

List<RecipeModel> favoriteList = [
  RecipeModel(recipe: 'image1', name: 'icecream'),
  RecipeModel(recipe: 'image2', name: 'Salad'),
  RecipeModel(recipe: 'image3', name: 'Sandwich'),
  RecipeModel(recipe: 'image4', name: 'Egg with Carrot')
];

List<VideoModel> videoList = [
  VideoModel(
      image: 'video_img1',
      name: 'Burger',
      url: 'https://www.youtube.com/watch?v=Nkndlln0j8cs'),
  VideoModel(
      image: 'video_img2',
      name: 'Choco icecream',
      url: 'https://www.youtube.com/watch?v=forX8PoqtkA'),
  VideoModel(
      image: 'video_img3',
      name: 'Noodles',
      url: 'https://www.youtube.com/watch?v=u3vuq3zaR20'),
  VideoModel(
      image: 'video_img4',
      name: 'Vegetables',
      url: 'https://www.youtube.com/watch?v=z161elNBhN4'),
  VideoModel(
      image: 'video_img5',
      name: 'Vegetables',
      url: 'https://www.youtube.com/watch?v=z161elNBhN4'),
  VideoModel(
      image: 'video_img6',
      name: 'Mix vegetabls',
      url: 'https://www.youtube.com/watch?v=pevl2QF-hkM'),
  VideoModel(
      image: 'video_img1',
      name: 'Burger',
      url: 'https://www.youtube.com/watch?v=Nkndlln0j8cs'),
  VideoModel(
      image: 'video_img2',
      name: 'Choco icecream',
      url: 'https://www.youtube.com/watch?v=forX8PoqtkA'),
  VideoModel(
      image: 'video_img3',
      name: 'Noodles',
      url: 'https://www.youtube.com/watch?v=u3vuq3zaR20'),
  VideoModel(
      image: 'video_img4',
      name: 'Vegetables',
      url: 'https://www.youtube.com/watch?v=z161elNBhN4'),
  VideoModel(
      image: 'video_img5',
      name: 'Vegetables',
      url: 'https://www.youtube.com/watch?v=z161elNBhN4'),
  VideoModel(
      image: 'video_img6',
      name: 'Mix vegetabls',
      url: 'https://www.youtube.com/watch?v=pevl2QF-hkM')
];

List<RecipeModel> chiefRecipeList = [
  RecipeModel(
      recipe: 'soup',
      name: 'Soup',
      url: 'https://www.youtube.com/watch?v=DPFT-R2mr1A'),
  RecipeModel(
      recipe: 'margerita',
      name: 'Margerita',
      url: 'https://www.youtube.com/watch?v=alK3g67qLt8'),
  RecipeModel(
      recipe: 'soup',
      name: 'Soup',
      url: 'https://www.youtube.com/watch?v=DPFT-R2mr1A'),
  RecipeModel(
      recipe: 'margerita',
      name: 'Margerita',
      url: 'https://www.youtube.com/watch?v=alK3g67qLt8'),
];

List<DateModel> dateList = [
  DateModel(date: '12', day: 'Sunday'),
  DateModel(date: '13', day: 'Monday'),
  DateModel(date: '14', day: 'Tuesday'),
  DateModel(date: '15', day: 'Wednesday'),
  DateModel(date: '16', day: 'Thursday'),
  DateModel(date: '17', day: 'Friday'),
  DateModel(date: '18', day: 'Saturday')
];

List<ChiefModel> chiefList = [
  ChiefModel(image: 'chief1', name: 'George Washingtone'),
  ChiefModel(image: 'chief2', name: 'Ulysses S.Grant'),
  ChiefModel(image: 'chief3', name: 'Tasker H. Bliss'),
  ChiefModel(image: 'chief4', name: 'Peyton C. M.')
];

List<String> youtubeRecipeList = [
  'https://www.youtube.com/watch?v=lWKVDFQeutY',
  'https://www.youtube.com/watch?v=nzNQ5lTmg1Q',
  'https://www.youtube.com/watch?v=BlzJzavriHw',
  'https://www.youtube.com/watch?v=eUUcpycEMlU'
];

List<RecipeModel> newRecipeList = [
  RecipeModel(name: 'Italian Pizza', recipe: 'pizza'),
  RecipeModel(name: 'Panner Tika', recipe: 'panir'),
  RecipeModel(name: 'Dessert', recipe: 'dessert')
];
