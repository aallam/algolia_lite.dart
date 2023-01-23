import 'dart:convert';
import 'dart:typed_data';

import 'package:compute/compute.dart';

/// Asynchronously decode bytes into JSON.
Future<Map<String, dynamic>> jsonDecode(Uint8List bytes) =>
    compute(_jsonDecode, bytes);

/// Decode [bytes] into JSON.
Map<String, dynamic> _jsonDecode(Uint8List bytes) =>
    json.decode(utf8.decode(bytes));
