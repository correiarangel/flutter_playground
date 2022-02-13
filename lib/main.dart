import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_playground/app/shared/service/http_overrides.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
