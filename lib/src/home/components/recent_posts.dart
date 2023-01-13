import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/home/controllers/home_controller.dart';

import '../../../core/designer/aton/sidebar_container.dart';

class RecentPosts extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  RecentPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Recent Post",
      child: Obx(
        () => Column(
          children: List.generate(
            _controller.recentPostItems.length,
            (index) => RecentPostCard(
              image: _controller.recentPostItems[index].image,
              title: _controller.recentPostItems[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class RecentPostCard extends StatelessWidget {
  final String image, title;
  final VoidCallback press;

  const RecentPostCard({
    Key? key,
    required this.image,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(image),
              ),
              const SizedBox(width: kDefaultPadding),
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  maxLines: 2,
                  style: const TextStyle(
                    fontFamily: "Raleway",
                    color: kDarkBlackColor,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
