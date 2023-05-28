import 'package:quiz/home/config/config.dart' as config show masters;
import 'package:quiz/home/utils/multiplication.dart';
import 'package:quiz/home/utils/date_util.dart';

class DocumentModel {
  DocumentModel({
    this.fullname,
    this.birthday,
    this.limitedNumber,
    this.filePath,
  });

  /// declare Main variables
  late String? fullname = "";
  late String? birthday = "";
  late String? filePath = "";
  late int? limitedNumber = 1;
  late int age = 0;

  /// declare GPS variables
  late String longitude;
  late String latitude;
  late String direction;

  /// declare Time variables
  late String shamsiTime;
  late String miladiTime;

  /// validate this document fields with null state
  bool validator() {
    if (fullname == null ||
        fullname?.length == 1 ||
        birthday == null ||
        filePath == null ||
        limitedNumber == null) {
      return false;
    }
    return true;
  }

  /// import data from json Object to current model
  fromJson(content) {
    fullname = content["fullname"];
    age = int.parse(content["age"]);
    shamsiTime = content["time"]["shamsi"];
    miladiTime = content["time"]["miladi"];
    longitude = content["location"]["longitude"];
    latitude = content["location"]["latitude"];
    direction = content["location"]["direction"];
  }

  /// get export of custom fields from current model
  getExport() {
    return {
      'fullname': fullname,
      'age': calculateAge(birthday!).toString(),
      'time': calculateNowTimes(),
      'location': {
        'longitude': longitude.toString(),
        'latitude': latitude.toString(),
        'direction': direction.toString(),
      },
      'masters': config.masters,
      'multiplication': calculateMultiplication(limitedNumber!)
    };
  }
}
