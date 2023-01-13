import 'package:flutter/material.dart';
import 'package:web_app/src/home/components/blog_post_card.dart';
import 'package:web_app/src/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class BlogPostList extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  BlogPostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Obx(
            () => Column(
          children: List.generate(
            _controller.blogPostsItems.length,
                (index) => BlogPostCard(blog: _controller.blogPostsItems[index]),
          ),
        ),
      ),
    );
  }
}
