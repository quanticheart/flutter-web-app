import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:web_app/core/extensions/web_ext.dart';

extension PlatformActionExt on BuildContext {
  sendPlatformAction(String method, Map<String, dynamic> args) {
    if (kIsWeb) {
      sendEventJS(method, args);
    } else {
      // Send to method platform or event platform
    }
  }
}
