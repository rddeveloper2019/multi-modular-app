import 'package:app_settings/provider/app_settings_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: AppSettingsProvider, env: [Environment.prod])
class ProdAppSettingsProvider implements AppSettingsProvider {
  @override
  String getLanguage() {
    return 'english';
  }

  @override
  String getTheme() {
    return 'dark';
  }
}

@Injectable(as: AppSettingsProvider, env: [Environment.dev])
class DevAppSettingsProvider implements AppSettingsProvider {
  @override
  String getLanguage() {
    return 'russian';
  }

  @override
  String getTheme() {
    return 'light';
  }
}
