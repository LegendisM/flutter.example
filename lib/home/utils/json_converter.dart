import 'dart:convert';

/// convert Json Object to Json String With Beautification
String getPrettyJSONString(jsonObject) {
  const encoder = JsonEncoder.withIndent("     ");
  return encoder.convert(jsonObject);
}

/// convert Json String to Json Object
Map convertStringToMap(String content) {
  return const JsonDecoder().convert(content);
}
