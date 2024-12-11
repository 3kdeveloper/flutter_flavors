import 'core/constants/exports.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    logger.i(locator<FlavorConfig>().flavor);
    logger.i(locator<Utils>().isProduction());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          locator<Utils>().isProduction() ? 'Production' : 'Staging',
        ),
        centerTitle: true,
      ),
    );
  }
}
