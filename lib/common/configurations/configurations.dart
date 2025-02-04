import 'package:flutter_dotenv/flutter_dotenv.dart';
part 'configurations.g.dart';

/// This is the glossary of the Environment Configuration Variables.
///
/// This requires the part config to be generated.
/// Run `dart lib/common/configurations/generate.dart` to generate the part config module which will contain
/// build time config variables available through [Platform.environment].
abstract class Configurations {
  // add config vars

  /// If the current build environment is `production` or `development`.
  /// Any environement other than production is referenced as development
  static bool development = true;

  /// The API client services base url
  static String baseUrl = dotenv.env['BASE_URL']!;

  /// Load and setup the environment configs, making the variables available.
  static Future<void> loadConfig() async {
    const String env =
        String.fromEnvironment('BUILD_ENV_TYPE', defaultValue: 'default');

    const envFile = 'env/$env.env';

    Configurations.development = env == 'production' ? false : true;

    await dotenv.load(
      fileName: envFile,
      mergeWith: GeneratedConfig.environment,
    );
  }
}
