import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/src/home/controllers/home_controller.dart';

import '../../../core/designer/aton/sidebar_container.dart';

class Search extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());

  Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: "Type Here ...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding),
            child: SvgPicture.asset(
              "icons/ic_search.svg",
              height: 25,
            ),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 4),
            ),
            borderSide: BorderSide(color: Color(0xFFd3d4ed)),
          ),
        ),
      ),
    );
  }
}
