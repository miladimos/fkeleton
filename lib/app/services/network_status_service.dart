import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class NetworkStatusService extends GetxService {
  NetworkStatusService() {
    Connectivity().onConnectivityChanged.listen(
      (status) async {
        _getNetworkStatus(status);
      },
    );
  }
  void _getNetworkStatus(ConnectivityResult status) {
    if (status == ConnectivityResult.mobile ||
        status == ConnectivityResult.wifi) {
      print("Internet connected");
    } else {
      print("Lost the connection");
    }
  }
}
    // Get.put < NetworkStatusService > (NetworkStatusService(), permanent: true);
