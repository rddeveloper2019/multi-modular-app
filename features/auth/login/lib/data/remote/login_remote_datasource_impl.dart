import 'package:login/data/remote/login_remote_datasource.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/data/response/login_response.dart';
import 'package:login/data/services/login_service.dart';
import 'package:retrofit/retrofit.dart';

class LoginRemoteDatasourceImpl implements LoginRemoteDatasource {
  final LoginService loginService;

  LoginRemoteDatasourceImpl(this.loginService);

  @override
  Future<HttpResponse<LoginResponse>> login(LoginRequest loginRequest) async {
    return await loginService.login(loginRequest.email, loginRequest.password);
  }
}
