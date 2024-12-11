import '../constants/exports.dart';

void productionMain() async {
  locator<FlavorConfig>()
    ..flavor = FlavorEnum.production
    ..values = FlavorValues(
      apiBaseUrl: FlavorResources.productionBaseUrl,
      googleClientId: FlavorResources.productionGoogleClientId,
    );
  mainCommon();
  return runApp(const MyApp());
}
