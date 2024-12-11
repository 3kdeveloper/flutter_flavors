import '../constants/exports.dart';

void stagingMain() async {
  locator<FlavorConfig>()
    ..flavor = FlavorEnum.staging
    ..values = FlavorValues(
      apiBaseUrl: FlavorResources.stagingBaseUrl,
      googleClientId: FlavorResources.stagingGoogleClientId,
    );
  mainCommon();
  return runApp(const MyApp());
}
