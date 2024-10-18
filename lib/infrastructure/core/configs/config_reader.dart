import 'dart:convert';
import 'package:flutter/services.dart';

abstract class ConfigReader {
  static late Map<String, dynamic> _config;

  static Future<void> initialize({required String env}) async {
    final configString = await rootBundle.loadString('config/env.$env.json');
    _config = json.decode(configString) as Map<String, dynamic>;
  }

}
