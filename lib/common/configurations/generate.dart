// ignore_for_file: avoid_print
import 'dart:convert';
import 'dart:io' show Platform, File;

import 'package:path/path.dart' show dirname, join;

String template = """
part of 'configurations.dart';

class GeneratedConfig {
  static Map<String, String> environment = ${json.encode(Platform.environment)};
} 
""";

/// This generates the `config.g.dart` file required by `config.dart`
Future<void> generatePlatformConfig() async {
  final dir = dirname(Platform.script.path);

  String filename = join(
    Platform.isWindows ? dir.replaceFirstMapped('/', (match) => '') : dir,
    'configurations.g.dart',
  );

  await File(filename).writeAsString(template.replaceAll('\$', '\\\$'));
}

Future<void> main() async {
  await generatePlatformConfig().catchError((e) {
    print('Error occured generating environment configs. $e');
  });
}
