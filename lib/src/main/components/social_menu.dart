import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';

class SocialMenu extends StatelessWidget {
  const SocialMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SocialItems(),
        if (!context.isMobile()) const SizedBox(width: kDefaultPadding),
        if (!context.isMobile())
          ElevatedButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: kDefaultPadding * 1.5,
                vertical: kDefaultPadding / (context.isDesktop() ? 1 : 2),
              ),
            ),
            child: const Text("Go!"),
          ),
      ],
    );
  }
}

class SocialItems extends StatelessWidget {
  const SocialItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var path = context.isDesktop() ? "" : "assets/";
    var size = 25.0;
    var color = Colors.white;
    return Row(
      children: [
        SvgPicture.asset(
          "${path}icons/menu_whatsapp.svg",
          height: size,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: SvgPicture.asset(
            "${path}icons/menu_telegram.svg",
            height: size,
            color: color,
          ),
        ),
        SvgPicture.asset(
          "${path}icons/menu_github.svg",
          height: size,
          color: color,
        ),
      ],
    );
  }
}
