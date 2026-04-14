import 'package:app_settings/di/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:multimodular_app/di/injection.config.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies(String? environment) {
  getIt.init(environment: environment);
  configureAppSettingsDependencies(getIt, environment);
}
