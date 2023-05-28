import 'dart:io';
import 'package:quiz/home/utils/json_converter.dart';

class StorageService {
  String fileName = "data.txt";

  /// save file with [Path , Content] as Json String Structure
  /// => write mode [w-flush]
  Future<File> saveFile(String path, content) async {
    File file = File("$path/$fileName");
    return file.writeAsString(getPrettyJSONString(content), flush: true);
  }

  /// load file with [Path] as Json Object Structure
  Future<Map> loadFile(String path) async {
    File file = File("$path/$fileName");
    return convertStringToMap(await file.readAsString());
  }
}
