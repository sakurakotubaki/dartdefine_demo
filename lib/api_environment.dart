import 'package:flutter_dotenv/flutter_dotenv.dart';

const String flavor = String.fromEnvironment('FLAVOR');

final variablesDev = {
  'baseUrl': dotenv.env['DEFINE_DEV_BASE_URL'],
};

final variablesProd = {
  'baseUrl': dotenv.env['DEFINE_PROD_BASE_URL'],
};

Map<String, dynamic> get environment {
  if (flavor == 'dev') {
    return variablesDev;
  }
  if (flavor == 'prod') {
    return variablesProd;
  }
  throw UnimplementedError('baseUrl: $flavor is unknown value');
}
