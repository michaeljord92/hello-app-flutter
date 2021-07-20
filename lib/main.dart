import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hello/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() {
  return runApp(ModularApp(module: AppModule()));
}
