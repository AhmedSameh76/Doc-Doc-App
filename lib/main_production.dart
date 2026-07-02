import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart'; // 1. تأكد من وجود الـ import ده
import 'package:my_app1/core/di/debendncy_injection.dart';
import 'package:my_app1/doc_app.dart';
// import 'firebase_options.dart'; // 2. اعمل import لملف الـ firebase_options بتاعك هنا

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(

  );
 
  setupGetIt();

  await ScreenUtil.ensureScreenSize();
  
  runApp(const DocApp());
}