import 'package:flutter/material.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/home/components/blog_post_list.dart';
import 'package:web_app/src/home/components/categories.dart';
import 'package:web_app/src/home/components/recent_posts.dart';
import 'package:web_app/src/home/components/search.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BlogPostList(),
        if (!context.isMobile()) const SizedBox(width: kDefaultPadding),
        // Sidebar
        if (!context.isMobile())
          Expanded(
            child: Column(
              children: [
                Search(),
                const SizedBox(height: kDefaultPadding),
                Categories(),
                const SizedBox(height: kDefaultPadding),
                RecentPosts(),
              ],
            ),
          ),
      ],
    );
  }
}
