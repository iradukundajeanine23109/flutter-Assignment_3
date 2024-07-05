import 'package:connectivity_plus/connectivity_plus.dart';

void main() {
  Connectivity().onConnectivityChanged.listen((ConnectivityResult result) {
    // Handle connectivity result
  });
}
