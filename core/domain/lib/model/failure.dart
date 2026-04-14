import 'package:domain/model/localized_message.dart';

class Failure {
  int code; //200, 300, 400, 500,
  LocalizedMessage message;

  Failure(this.code, this.message);
}
