import 'package:quiz/home/utils/date_converter.dart';

/// Get Date Time as string for calculate age Of user
String calculateAge(String targetDate) {
  // Convert Solar Date Time To Gregorian
  List<int> formattedDate = (targetDate.split("/").map(
        (e) => int.parse(e),
      )).toList();
  List<dynamic> convertedDate = jalaliToGregorian(
    formattedDate[0],
    formattedDate[1],
    formattedDate[2],
  );
  DateTime targetDateResult = DateTime(
    convertedDate[0],
    convertedDate[1],
    convertedDate[2],
  );
  // calculate Age by take target Year from now Year
  int result = DateTime.now().year - targetDateResult.year;
  return result.toString();
}

/// get now Date Times as Map string [solar,gregorian]
Map<String, String> calculateNowTimes() {
  DateTime mainDateTime = DateTime.now();
  String time = mainDateTime.toString().split(" ")[1].split(".")[0];
  String miladiDatetime = mainDateTime.toString().split(" ")[0];
  String solarDateTime =
      gregorianToJalali(mainDateTime.year, mainDateTime.month, mainDateTime.day)
          .toString()
          .replaceAll(", ", "/")
          .replaceAll("[", '')
          .replaceAll("]", '');
  return {
    'shamsi': "$solarDateTime $time",
    'miladi': "$miladiDatetime $time",
  };
}
