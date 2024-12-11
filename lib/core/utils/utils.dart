import '../constants/exports.dart';

class Utils {
  final flavor = locator<FlavorConfig>().flavor;

  bool isProduction() => flavor == FlavorEnum.production;
}
