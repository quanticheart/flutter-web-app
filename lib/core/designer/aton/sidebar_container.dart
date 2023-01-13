import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:web_app/core/themes/theme_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';

class SidebarContainer extends StatelessWidget {
  final String title;
  final Widget child;

  const SidebarContainer({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: context.background,
        borderRadius: const BorderRadius.all(
          Radius.circular(kDefaultPadding / 4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: kDarkBlackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: kDefaultPadding / 2),
          child,
        ],
      ),
    );
  }
}
