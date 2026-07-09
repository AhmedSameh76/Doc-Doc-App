import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/doc_app.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  runApp(const DocApp());
}
