import 'dart:async';
import 'package:flutter/services.dart';


const platform = const MethodChannel('schools/vulcansigner');

Future<String> signVulcanRequest(String content, String cert) async {
  try {
    final String result = await platform.invokeMethod('signContent', 
        Map.from({ 'content': content, 'certificate': cert })
      );
    return result;
  } on PlatformException catch (e) {
    throw(e);
  }
}