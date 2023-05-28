import 'package:sensors_plus/sensors_plus.dart';

class GyroscopeService {
  /// declare default state of gyroscope
  String direction = "forward";

  /// add [Gyroscope Data] listener to update state of [Direction]
  GyroscopeService() {
    gyroscopeEvents.listen((GyroscopeEvent event) {
      double x = event.x;
      double y = event.y;

      /// calculate direction from [x,y]
      if (x > 0) {
        direction = "back";
      } else if (x < 0) {
        direction = "forward";
      } else if (y > 0) {
        direction = "left";
      } else if (y < 0) {
        direction = "right";
      }
    });
  }
}
