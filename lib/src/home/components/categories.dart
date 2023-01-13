import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/home/controllers/home_controller.dart';

import '../../../core/designer/aton/sidebar_container.dart';

class Categories extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Obx(
        () => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            _controller.categoryItems.length,
            (index) => CategoryItem(
              title: _controller.categoryItems[index].title,
              numOfItems: _controller.categoryItems[index].numOfItems,
              press: () => {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;

  const CategoryItem({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding / 4, left: 0),
      child: TextButton(
        onPressed: () {},
        child: Text.rich(
          TextSpan(
            text: title,
            style: const TextStyle(color: kDarkBlackColor),
            children: [
              TextSpan(
                text: " ($numOfItems)",
                style: const TextStyle(color: kBodyTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
