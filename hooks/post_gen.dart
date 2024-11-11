import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Installing melos...');

  // Adding melos as a dev dependency
  await Process.run('dart', ['pub', 'add', 'melos', '--dev']);

  progress.complete();
}
