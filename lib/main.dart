import 'dart:async';
import 'dart:developer';
import 'package:dj_pmi/service_locator.dart';
import 'package:dj_pmi/core/app/app.dart';
import 'package:flutter/material.dart';

void main() {
  ServiceLocator.initialize();

  runZonedGuarded(() async {
    runApp(const MyApp());
  }, (error, stack) {
    // Record all crash errors here
    log("Error: $error, Stack trace: $stack");
  });
}
