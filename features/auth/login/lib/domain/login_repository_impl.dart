import 'package:dartz/dartz.dart';
import 'package:domain/model/failure.dart';
import 'package:login/data/request/login_request.dart';
import 'package:login/domain/login_repository.dart';
import 'package:login/domain/model/login_model.dart';

class LoginRepositoryImpl implements LoginRepository {
  @override
  Future<Either<Failure, LoginModel>> login(LoginRequest loginRequest) {
    // TODO: implement login
    throw UnimplementedError();
  }
}
