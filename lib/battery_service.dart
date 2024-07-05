import 'package:battery_plus/battery_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BatteryService {
  BatteryService() {
    Battery().onBatteryStateChanged.listen((BatteryState state) async {
      if (state == BatteryState.charging) {
        final int batteryLevel = await Battery().batteryLevel;
        if (batteryLevel >= 90) {
          Fluttertoast.showToast(msg: "Battery is at $batteryLevel% and charging");
        }
      }
    });
  }
}
