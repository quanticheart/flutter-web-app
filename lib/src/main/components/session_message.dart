import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:web_app/core/extensions/web_ext.dart';
import 'package:web_app/core/themes/themes_default.dart';
import 'package:web_app/core/extensions/screen_ext.dart';

class SessionMessage extends StatefulWidget {
  const SessionMessage({super.key});

  @override
  State<SessionMessage> createState() => _SessionMessageState();
}

class _SessionMessageState extends State<SessionMessage> {
  String? sessionMsg;

  @override
  void initState() {
    super.initState();
    _updateSession();
  }

  _updateSession() async {
    sessionMsg = await webGetSession("data");
  }

  @override
  Widget build(BuildContext context) {
    return sessionMsg?.isBlank == true
        ? Container(
            width: double.infinity,
            color: kDarkBlackColor,
            child: Column(
              children: [
                Container(
                  constraints: const BoxConstraints(maxWidth: kMaxWidth),
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kDefaultPadding),
                        child: Text(
                          sessionMsg!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            height: 1.5,
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
          )
        : const SizedBox();
  }
}
