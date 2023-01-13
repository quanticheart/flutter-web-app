import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:web_app/src/home/models/Blog.dart';
import 'package:web_app/src/home/models/category.dart';
import 'package:web_app/src/home/models/recent_posts.dart';

class HomeController extends GetxController {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  List<Blog> get blogPostsItems => [
        Blog(
          date: "01 September 2022",
          typePost: "dall-e 2",
          image: "assets/images/0.png",
          title: "What is Lorem Ipsum?",
          description:
              "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        ),
        Blog(
          date: "06 August 2022",
          typePost: "Flutter",
          image: "assets/images/1.png",
          title: "Where does it come from?",
          description:
              "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        ),
        Blog(
          date: "19 September 2022",
          typePost: "Game",
          image: "assets/images/2.jpeg",
          title: "Where can I get some?",
          description:
              "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
        ),
      ].obs;

  List<Category> get categoryItems => [
        Category(
          title: 'Flutter',
          numOfItems: 3,
        ),
        Category(
          title: 'Ios',
          numOfItems: 4,
        ),
        Category(
          title: 'Android',
          numOfItems: 4,
        ),
        Category(
          title: 'Laravel',
          numOfItems: 4,
        ),
        Category(
          title: 'Laravel',
          numOfItems: 4,
        ),
        Category(
          title: 'Laravel',
          numOfItems: 4,
        ),
        Category(
          title: 'Laravel',
          numOfItems: 4,
        ),
        Category(
          title: 'Laravel',
          numOfItems: 4,
        ),
      ].obs;

  List<RecentPost> get recentPostItems => [
        RecentPost(
          image: "assets/images/recent_1.png",
          title:
              "is simply dummy text of the printing and typesetting industry.",
        ),
        RecentPost(
          image: "assets/images/recent_2.png",
          title:
              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
        ),
      ].obs;
}
