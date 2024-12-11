import '../constants/exports.dart';

Future<void> initDependencies() async {
  ///! Utils
  locator.registerLazySingleton<Utils>(() => Utils());
  locator.registerLazySingleton<FlavorConfig>(() => FlavorConfig(
        values: FlavorValues(apiBaseUrl: "", googleClientId: ""),
        flavor: FlavorEnum.staging,
      ));
}
