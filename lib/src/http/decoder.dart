import 'dart:convert';
import 'dart:typed_data';

import 'package:compute/compute.dart';

/// Asynchronously decode bytes into JSON.
Future<Map> jsonDecode(Uint8List bytes) => compute(_jsonDecode, bytes);

/// Decode [bytes] into JSON.
Map _jsonDecode(Uint8List bytes) => json.decode(utf8.decode(bytes));
