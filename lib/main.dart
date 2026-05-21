import 'package:flutter/material.dart';
import 'package:my_app1/core/DI/dependency_injection.dart';
import 'package:my_app1/doc_app.dart';

void main() {
  setupGetIt();
  runApp(const DocApp());
}
