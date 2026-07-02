import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SharedPrefHelper {
  // instance واحدة ثابتة على مستوى الكلاس
  static const FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  /// Saves a secure string key-value pair
  static Future<void> setSecuredString(String key, String value) async {
    debugPrint("FlutterSecureStorage : setSecuredString with key : $key");
    try {
      await _secureStorage.write(key: key, value: value);
    } catch (e, st) {
      debugPrint("FlutterSecureStorage : ERROR while writing key $key -> $e");
      debugPrint(st.toString());
      // لو الكتابة فشلت بسبب مشكلة في الـ Keystore، امسح كل حاجة وحاول تاني مرة واحدة
      try {
        await _secureStorage.deleteAll();
        await _secureStorage.write(key: key, value: value);
      } catch (e2) {
        debugPrint("FlutterSecureStorage : retry write also failed -> $e2");
      }
    }
  }

  /// Gets a secure string by key
  /// لو فيه أي مشكلة في فك التشفير (مفتاح تالف / Algorithm mismatch)
  /// بنرجع string فاضي بدل ما نعمل crash في native layer
  static Future<String> getSecuredString(String key) async {
    debugPrint("FlutterSecureStorage : getSecuredString with key : $key");
    try {
      return await _secureStorage.read(key: key) ?? '';
    } catch (e, st) {
      debugPrint("FlutterSecureStorage : ERROR while reading key $key -> $e");
      debugPrint(st.toString());
      // القيمة المخزنة تالفة / مش قابلة لفك التشفير، امسحها عشان منوقعش في نفس
      // المشكلة تاني، ورجّع فاضي بدل ما نعلّق التطبيق
      try {
        await _secureStorage.delete(key: key);
      } catch (_) {
        // تجاهل، الهدف الأساسي إننا منكراشش
      }
      return '';
    }
  }

  /// Clears all secured data
  static Future<void> clearAllSecuredData() async {
    debugPrint("FlutterSecureStorage : all data has been cleared");
    try {
      await _secureStorage.deleteAll();
    } catch (e) {
      debugPrint("FlutterSecureStorage : ERROR while clearing all data -> $e");
    }
  }
}