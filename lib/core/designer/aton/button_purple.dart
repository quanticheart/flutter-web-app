import 'package:flutter/material.dart';
import 'package:web_app/core/extensions/screen_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';

class ButtonPurple extends StatelessWidget {
  const ButtonPurple({Key? key, required this.title, required this.callback})
      : super(key: key);

  final String title;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding * 1.5,
          vertical: kDefaultPadding / (context.isDesktop() ? 1 : 2),
        ),
      ),
      child: Text(title),
    );
  }
}
