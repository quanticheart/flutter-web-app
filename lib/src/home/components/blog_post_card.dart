import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/theme_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/home/models/Blog.dart';

class BlogPostCard extends StatelessWidget {
  final Blog blog;

  const BlogPostCard({
    Key? key,
    required this.blog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.78,
            child: Image.asset(
              blog.image!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: context.background,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      blog.typePost!.toUpperCase(),
                      style: const TextStyle(
                        color: kDarkBlackColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: kDefaultPadding),
                    Text(
                      blog.date!,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    blog.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: context.isDesktop() ? 32 : 24,
                      fontFamily: "Raleway",
                      color: kDarkBlackColor,
                      height: 1.3,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  blog.description!,
                  maxLines: 4,
                  style: const TextStyle(height: 1.5),
                ),
                const SizedBox(height: kDefaultPadding),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding:
                            const EdgeInsets.only(bottom: kDefaultPadding / 4),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: kPrimaryColor, width: 3),
                          ),
                        ),
                        child: const Text(
                          "More Info",
                          style: TextStyle(color: kDarkBlackColor),
                        ),
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_thumbs-up.svg"),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(
                          "assets/icons/feather_message-square.svg"),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon:
                          SvgPicture.asset("assets/icons/feather_share-2.svg"),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
