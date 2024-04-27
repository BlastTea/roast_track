part of 'services.dart';

abstract final class PermissionHelper {
  static Future<bool> isPermitted({
    bool withMessage = true,
    bool withStorage = true,
  }) async {
    Map<permission.Permission, permission.PermissionStatus> results = await [
      if (withStorage) permission.Permission.manageExternalStorage,
    ].request();

    bool permitted = true;

    for (MapEntry<permission.Permission, permission.PermissionStatus> entry in results.entries) {
      if (![permission.Permission.bluetooth].contains(entry.key) && !(entry.value.isGranted || entry.value.isLimited)) {
        permitted = false;
        break;
      }
    }

    if (!permitted && withMessage) await showInformationDialog('Izin tidak diberikan');

    return permitted;
  }
}
