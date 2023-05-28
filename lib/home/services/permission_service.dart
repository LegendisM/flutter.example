import 'package:permission_handler/permission_handler.dart';
import 'package:quiz/home/services/notification_service.dart';

class PermissionService {
  NotificationService notificationService = NotificationService();

  /// request and get last status of  [Storage & extenalStorage]
  /// => if this permission permanently denied automatically open Application settings
  Future<bool> onRequestFilePermission() async {
    var status = await Permission.manageExternalStorage.status;
    var statusStorage = await Permission.storage.status;

    if (status.isGranted &&
        statusStorage.isDenied == false &&
        statusStorage.isPermanentlyDenied == false) {
      return true;
    } else {
      var lastStatus = await Permission.manageExternalStorage.request();
      var lastStatusStorage = await Permission.storage.request();
      if (lastStatus.isGranted &&
          lastStatusStorage.isDenied == false &&
          lastStatusStorage.isPermanentlyDenied == false) {
        return true;
      }
      openAppSettingsOption();
      return false;
    }
  }

  /// open Application settings for get Grand permission
  /// => this action alerted by notification
  void openAppSettingsOption() {
    openAppSettings();
    notificationService.showNotification(
      "توجه !",
      "لطفا دسترسی به فضا ذخیره سازی را مجاز کنید.",
    );
  }
}
