import 'dart:async';
import 'dart:developer';
import 'package:dj_pmi/common/dependency_injection/locator.dart';
import 'package:dj_pmi/core/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  Locator.initializeLocator();

  runZonedGuarded(() async {
    //

    runApp(const MyApp());
  }, (error, stack) {
    // Record all crash errors here
    log("Error: $error, Stack trace: $stack");
  });
}
