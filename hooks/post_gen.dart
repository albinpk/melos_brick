import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  // Adding melos as a dev dependency
  final installingMelosProgress =
      context.logger.progress('Installing melos...');
  await Process.run('dart', ['pub', 'add', 'melos', '--dev']);
  installingMelosProgress.complete();

  // Running "melos bootstrap"
  final melosBootstrapProgress = context.logger.progress('Melos bootstrap...');
  await Process.run('melos', ['bootstrap']);
  melosBootstrapProgress.complete();
}
