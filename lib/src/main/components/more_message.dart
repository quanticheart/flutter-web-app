import 'package:flutter/material.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/core/extensions/screen_ext.dart';

class MoreMessage extends StatelessWidget {
  const MoreMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: kDarkBlackColor,
      child: Column(
        children: [
          Container(
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            padding: const EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                Text(
                  "Welcome to Flutter Web",
                  style: TextStyle(
                    fontSize: context.isMobile() ? 24 : 32,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Text(
                    "is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, \nwhen an unknown printer took a galley of type and scrambled",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway',
                      height: 1.5,
                    ),
                  ),
                ),
                FittedBox(
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: const [
                        Text(
                          "For More Info",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: kDefaultPadding / 2),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                if (context.isDesktop())
                  const SizedBox(height: kDefaultPadding),
              ],
            ),
          )
        ],
      ),
    );
  }
}
