import 'package:shared/shared.dart';

enum Flavor {
  DEVELOPMENT,
  PRODUCTION,
}

class FlavorConfig {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.PRODUCTION:
        return AppConstant.appName;
      case Flavor.DEVELOPMENT:
      default:
        return AppConstant.appNameDev;
    }
  }

  static bool get isDebug {
    switch (appFlavor) {
      case Flavor.DEVELOPMENT:
        return true;
        break;
      case Flavor.PRODUCTION:
        return false;
      default:
        return true;
    }
  }
}
