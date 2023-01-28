import 'package:json_annotation/json_annotation.dart';

/// Ignore json key
const ignore = JsonKey(includeFromJson: false, includeToJson: false);

/// Serializable only
const serializable = JsonSerializable(createFactory: false);

/// Deserializable only
const deserializable = JsonSerializable(createToJson: false);
