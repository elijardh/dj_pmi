import 'package:dj_pmi/common/configurations/constants.dart';

class Configuration {
  static String get getBaseUrl =>
      const String.fromEnvironment(ConfigurationConstants.baseURL,
          defaultValue: 'https://default.example.com');

  static String get getEnvironment =>
      const String.fromEnvironment(ConfigurationConstants.environment,
          defaultValue: 'STAGING');
}
