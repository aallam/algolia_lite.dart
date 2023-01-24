import 'dart:convert';

import 'package:compute/compute.dart';

/// Asynchronously decode bytes into JSON.
Future<Map<String, dynamic>> jsonDecode(String jsonString) =>
    compute(_jsonDecode, jsonString);

/// Decode [bytes] into JSON.
Map<String, dynamic> _jsonDecode(String jsonString) => json.decode(jsonString);
