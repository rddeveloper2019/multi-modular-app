// import 'package:data/data.dart';

import 'package:datastore/provider/session_provider_impl.dart';
import 'package:dio/dio.dart';

class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  Dio dio = Dio();
  final provider = DevSessionProviderImpl();
}
