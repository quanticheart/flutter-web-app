import "dart:convert";
import "dart:html";

import "package:flutter_session_manager/flutter_session_manager.dart";
import "package:universal_html/js.dart" as js;

sendEventJS(String method, Map<String, dynamic> args) {
  args["method"] = method;
  js.context.callMethod("handleMethod", [const JsonEncoder().convert(args)]);
}

getParams() {
  var uri = Uri.dataFromString(window.location.href);
  Map<String, String> params = uri.queryParameters;
  var origin = params['origin'];
  var destiny = params['destiny'];
  print(origin);
  print(destiny);
}

/// See more in https://pub.dev/packages/flutter_session_manager/versions/1.0.2
webSetSession(String key, dynamic value) async {
  await SessionManager().set(key, value);
}

/// See more in https://pub.dev/packages/flutter_session_manager/versions/1.0.2
dynamic webGetSession(String key) async {
  return await SessionManager().get(key);
}
