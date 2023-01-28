import 'package:json_annotation/json_annotation.dart';

/// Ignore json key
const ignore = JsonKey(includeFromJson: false, includeToJson: false);

const serializable = JsonSerializable(createFactory: false);
const deserializable = JsonSerializable(createToJson: false);
