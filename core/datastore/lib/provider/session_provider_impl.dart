import 'package:datastore/provider/session_provider.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: SessionProvider, env: [Environment.prod])
class ProdSessionProviderImpl implements SessionProvider {
  @override
  String getAccessToken() {
    return 'access token prod';
  }

  @override
  String getClientId() {
    return 'clientId prod';
  }

  @override
  String getRefreshToken() {
    return 'refreshToken prod';
  }

  @override
  String getUserId() {
    return 'userId prod';
  }
}

@Injectable(as: SessionProvider, env: [Environment.dev])
class DevSessionProviderImpl implements SessionProvider {
  @override
  String getAccessToken() {
    return 'access token dev';
  }

  @override
  String getClientId() {
    return 'clientId dev';
  }

  @override
  String getRefreshToken() {
    return 'refreshToken dev';
  }

  @override
  String getUserId() {
    return 'userId dev';
  }
}
