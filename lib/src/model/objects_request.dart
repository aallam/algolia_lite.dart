import 'package:algolia_lite/algolia_lite.dart';
import 'package:algolia_lite/src/model/extension.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'objects_request.g.dart';

@serializable
class ObjectsRequest extends Equatable {
  /// List of object requests.
  final Iterable<ObjectRequest> requests;

  /// Create [ObjectRequest] instance.
  const ObjectsRequest({required this.requests});

  @internal
  Map<String, dynamic> toJson() => _$ObjectsRequestToJson(this);

  @override
  @ignore
  List<Object?> get props => [requests];

  @override
  @ignore
  // ignore: hash_and_equals
  int get hashCode => super.hashCode;

  @override
  @ignore
  bool? get stringify => super.stringify;
}
