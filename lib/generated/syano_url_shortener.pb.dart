//
//  Generated code. Do not modify.
//  source: syano_url_shortener.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

/// Represents a URL entity with its associated attributes
class Entity extends $pb.GeneratedMessage {
  factory Entity({
    $core.String? longUrl,
    $core.String? shortUrl,
    Timestamp? createdAt,
    Timestamp? updatedAt,
    $core.int? clickCount,
    $core.String? expirationTime,
  }) {
    final $result = create();
    if (longUrl != null) {
      $result.longUrl = longUrl;
    }
    if (shortUrl != null) {
      $result.shortUrl = shortUrl;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (clickCount != null) {
      $result.clickCount = clickCount;
    }
    if (expirationTime != null) {
      $result.expirationTime = expirationTime;
    }
    return $result;
  }
  Entity._() : super();
  factory Entity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Entity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Entity', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'longUrl', protoName: 'longUrl')
    ..aOS(3, _omitFieldNames ? '' : 'shortUrl', protoName: 'shortUrl')
    ..aOM<Timestamp>(4, _omitFieldNames ? '' : 'createdAt', protoName: 'createdAt', subBuilder: Timestamp.create)
    ..aOM<Timestamp>(5, _omitFieldNames ? '' : 'updatedAt', protoName: 'updatedAt', subBuilder: Timestamp.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'clickCount', $pb.PbFieldType.O3, protoName: 'clickCount')
    ..aOS(7, _omitFieldNames ? '' : 'expirationTime', protoName: 'expirationTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Entity clone() => Entity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Entity copyWith(void Function(Entity) updates) => super.copyWith((message) => updates(message as Entity)) as Entity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Entity create() => Entity._();
  Entity createEmptyInstance() => create();
  static $pb.PbList<Entity> createRepeated() => $pb.PbList<Entity>();
  @$core.pragma('dart2js:noInline')
  static Entity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Entity>(create);
  static Entity? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get longUrl => $_getSZ(0);
  @$pb.TagNumber(2)
  set longUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongUrl() => $_has(0);
  @$pb.TagNumber(2)
  void clearLongUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortUrl => $_getSZ(1);
  @$pb.TagNumber(3)
  set shortUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortUrl() => $_has(1);
  @$pb.TagNumber(3)
  void clearShortUrl() => clearField(3);

  @$pb.TagNumber(4)
  Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(4)
  set createdAt(Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(5)
  Timestamp get updatedAt => $_getN(3);
  @$pb.TagNumber(5)
  set updatedAt(Timestamp v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(3);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);
  @$pb.TagNumber(5)
  Timestamp ensureUpdatedAt() => $_ensure(3);

  /// google.protobuf.Timestamp createdAt = 4;  // Timestamp when // option java_multiple_files = true;
  /// option java_package = "com.syano";
  /// option java_outer_classname = "Syano_url_shortener";
  /// option objc_class_prefix = "HLW";the URL was created
  /// google.protobuf.Timestamp updatedAt = 5;  // Timestamp of the last update
  @$pb.TagNumber(6)
  $core.int get clickCount => $_getIZ(4);
  @$pb.TagNumber(6)
  set clickCount($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasClickCount() => $_has(4);
  @$pb.TagNumber(6)
  void clearClickCount() => clearField(6);

  /// google.protobuf.Timestamp expirationTime = 7;  // Expiration time for the shortened URL
  @$pb.TagNumber(7)
  $core.String get expirationTime => $_getSZ(5);
  @$pb.TagNumber(7)
  set expirationTime($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpirationTime() => $_has(5);
  @$pb.TagNumber(7)
  void clearExpirationTime() => clearField(7);
}

/// Request message for creating a new URL entity
class CreateUrlRequest extends $pb.GeneratedMessage {
  factory CreateUrlRequest({
    $core.String? longUrl,
    Timestamp? expirationTime,
  }) {
    final $result = create();
    if (longUrl != null) {
      $result.longUrl = longUrl;
    }
    if (expirationTime != null) {
      $result.expirationTime = expirationTime;
    }
    return $result;
  }
  CreateUrlRequest._() : super();
  factory CreateUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateUrlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'longUrl', protoName: 'longUrl')
    ..aOM<Timestamp>(2, _omitFieldNames ? '' : 'expirationTime', protoName: 'expirationTime', subBuilder: Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateUrlRequest clone() => CreateUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateUrlRequest copyWith(void Function(CreateUrlRequest) updates) => super.copyWith((message) => updates(message as CreateUrlRequest)) as CreateUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateUrlRequest create() => CreateUrlRequest._();
  CreateUrlRequest createEmptyInstance() => create();
  static $pb.PbList<CreateUrlRequest> createRepeated() => $pb.PbList<CreateUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateUrlRequest>(create);
  static CreateUrlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get longUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set longUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLongUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearLongUrl() => clearField(1);

  /// google.protobuf.Timestamp expirationTime = 2;
  @$pb.TagNumber(2)
  Timestamp get expirationTime => $_getN(1);
  @$pb.TagNumber(2)
  set expirationTime(Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpirationTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpirationTime() => clearField(2);
  @$pb.TagNumber(2)
  Timestamp ensureExpirationTime() => $_ensure(1);
}

/// Response message for creating a new URL entity
class CreateUrlResponse extends $pb.GeneratedMessage {
  factory CreateUrlResponse({
    Entity? entity,
  }) {
    final $result = create();
    if (entity != null) {
      $result.entity = entity;
    }
    return $result;
  }
  CreateUrlResponse._() : super();
  factory CreateUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOM<Entity>(1, _omitFieldNames ? '' : 'entity', subBuilder: Entity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateUrlResponse clone() => CreateUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateUrlResponse copyWith(void Function(CreateUrlResponse) updates) => super.copyWith((message) => updates(message as CreateUrlResponse)) as CreateUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateUrlResponse create() => CreateUrlResponse._();
  CreateUrlResponse createEmptyInstance() => create();
  static $pb.PbList<CreateUrlResponse> createRepeated() => $pb.PbList<CreateUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateUrlResponse>(create);
  static CreateUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Entity get entity => $_getN(0);
  @$pb.TagNumber(1)
  set entity(Entity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntity() => clearField(1);
  @$pb.TagNumber(1)
  Entity ensureEntity() => $_ensure(0);
}

/// Request message for retrieving a URL entity
class GetUrlRequest extends $pb.GeneratedMessage {
  factory GetUrlRequest({
    $core.String? shortUrl,
  }) {
    final $result = create();
    if (shortUrl != null) {
      $result.shortUrl = shortUrl;
    }
    return $result;
  }
  GetUrlRequest._() : super();
  factory GetUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUrlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'shortUrl', protoName: 'shortUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUrlRequest clone() => GetUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUrlRequest copyWith(void Function(GetUrlRequest) updates) => super.copyWith((message) => updates(message as GetUrlRequest)) as GetUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUrlRequest create() => GetUrlRequest._();
  GetUrlRequest createEmptyInstance() => create();
  static $pb.PbList<GetUrlRequest> createRepeated() => $pb.PbList<GetUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUrlRequest>(create);
  static GetUrlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get shortUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set shortUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortUrl() => clearField(1);
}

/// Response message for retrieving a URL entity
class GetUrlResponse extends $pb.GeneratedMessage {
  factory GetUrlResponse({
    $core.String? longUrl,
  }) {
    final $result = create();
    if (longUrl != null) {
      $result.longUrl = longUrl;
    }
    return $result;
  }
  GetUrlResponse._() : super();
  factory GetUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'longUrl', protoName: 'longUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUrlResponse clone() => GetUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUrlResponse copyWith(void Function(GetUrlResponse) updates) => super.copyWith((message) => updates(message as GetUrlResponse)) as GetUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUrlResponse create() => GetUrlResponse._();
  GetUrlResponse createEmptyInstance() => create();
  static $pb.PbList<GetUrlResponse> createRepeated() => $pb.PbList<GetUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUrlResponse>(create);
  static GetUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get longUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set longUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLongUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearLongUrl() => clearField(1);
}

/// Request message for updating an existing URL entity
class UpdateUrlRequest extends $pb.GeneratedMessage {
  factory UpdateUrlRequest({
    $core.int? id,
    $core.String? longUrl,
    $core.String? shortUrl,
    Timestamp? expirationTime,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (longUrl != null) {
      $result.longUrl = longUrl;
    }
    if (shortUrl != null) {
      $result.shortUrl = shortUrl;
    }
    if (expirationTime != null) {
      $result.expirationTime = expirationTime;
    }
    return $result;
  }
  UpdateUrlRequest._() : super();
  factory UpdateUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUrlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'longUrl', protoName: 'longUrl')
    ..aOS(3, _omitFieldNames ? '' : 'shortUrl', protoName: 'shortUrl')
    ..aOM<Timestamp>(4, _omitFieldNames ? '' : 'expirationTime', protoName: 'expirationTime', subBuilder: Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUrlRequest clone() => UpdateUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUrlRequest copyWith(void Function(UpdateUrlRequest) updates) => super.copyWith((message) => updates(message as UpdateUrlRequest)) as UpdateUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUrlRequest create() => UpdateUrlRequest._();
  UpdateUrlRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUrlRequest> createRepeated() => $pb.PbList<UpdateUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUrlRequest>(create);
  static UpdateUrlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get longUrl => $_getSZ(1);
  @$pb.TagNumber(2)
  set longUrl($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLongUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearLongUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get shortUrl => $_getSZ(2);
  @$pb.TagNumber(3)
  set shortUrl($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShortUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearShortUrl() => clearField(3);

  /// google.protobuf.Timestamp expirationTime = 4;
  @$pb.TagNumber(4)
  Timestamp get expirationTime => $_getN(3);
  @$pb.TagNumber(4)
  set expirationTime(Timestamp v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpirationTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpirationTime() => clearField(4);
  @$pb.TagNumber(4)
  Timestamp ensureExpirationTime() => $_ensure(3);
}

/// Response message for updating an existing URL entity
class UpdateUrlResponse extends $pb.GeneratedMessage {
  factory UpdateUrlResponse({
    Entity? entity,
  }) {
    final $result = create();
    if (entity != null) {
      $result.entity = entity;
    }
    return $result;
  }
  UpdateUrlResponse._() : super();
  factory UpdateUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOM<Entity>(1, _omitFieldNames ? '' : 'entity', subBuilder: Entity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateUrlResponse clone() => UpdateUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateUrlResponse copyWith(void Function(UpdateUrlResponse) updates) => super.copyWith((message) => updates(message as UpdateUrlResponse)) as UpdateUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUrlResponse create() => UpdateUrlResponse._();
  UpdateUrlResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateUrlResponse> createRepeated() => $pb.PbList<UpdateUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUrlResponse>(create);
  static UpdateUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Entity get entity => $_getN(0);
  @$pb.TagNumber(1)
  set entity(Entity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntity() => clearField(1);
  @$pb.TagNumber(1)
  Entity ensureEntity() => $_ensure(0);
}

/// Request message for deleting a URL entity
class DeleteUrlRequest extends $pb.GeneratedMessage {
  factory DeleteUrlRequest({
    $core.String? shortUrl,
  }) {
    final $result = create();
    if (shortUrl != null) {
      $result.shortUrl = shortUrl;
    }
    return $result;
  }
  DeleteUrlRequest._() : super();
  factory DeleteUrlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUrlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteUrlRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'shortUrl', protoName: 'shortUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUrlRequest clone() => DeleteUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUrlRequest copyWith(void Function(DeleteUrlRequest) updates) => super.copyWith((message) => updates(message as DeleteUrlRequest)) as DeleteUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteUrlRequest create() => DeleteUrlRequest._();
  DeleteUrlRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteUrlRequest> createRepeated() => $pb.PbList<DeleteUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteUrlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUrlRequest>(create);
  static DeleteUrlRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get shortUrl => $_getSZ(0);
  @$pb.TagNumber(1)
  set shortUrl($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShortUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearShortUrl() => clearField(1);
}

/// Response message for deleting a URL entity
class DeleteUrlResponse extends $pb.GeneratedMessage {
  factory DeleteUrlResponse({
    $core.String? status,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  DeleteUrlResponse._() : super();
  factory DeleteUrlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteUrlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteUrlResponse clone() => DeleteUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteUrlResponse copyWith(void Function(DeleteUrlResponse) updates) => super.copyWith((message) => updates(message as DeleteUrlResponse)) as DeleteUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteUrlResponse create() => DeleteUrlResponse._();
  DeleteUrlResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteUrlResponse> createRepeated() => $pb.PbList<DeleteUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteUrlResponse>(create);
  static DeleteUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
}

class Timestamp extends $pb.GeneratedMessage {
  factory Timestamp({
    $fixnum.Int64? seconds,
    $core.String? timeZone,
  }) {
    final $result = create();
    if (seconds != null) {
      $result.seconds = seconds;
    }
    if (timeZone != null) {
      $result.timeZone = timeZone;
    }
    return $result;
  }
  Timestamp._() : super();
  factory Timestamp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timestamp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timestamp', package: const $pb.PackageName(_omitMessageNames ? '' : 'com.syano'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'seconds')
    ..aOS(2, _omitFieldNames ? '' : 'timeZone')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timestamp clone() => Timestamp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timestamp copyWith(void Function(Timestamp) updates) => super.copyWith((message) => updates(message as Timestamp)) as Timestamp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timestamp create() => Timestamp._();
  Timestamp createEmptyInstance() => create();
  static $pb.PbList<Timestamp> createRepeated() => $pb.PbList<Timestamp>();
  @$core.pragma('dart2js:noInline')
  static Timestamp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timestamp>(create);
  static Timestamp? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get timeZone => $_getSZ(1);
  @$pb.TagNumber(2)
  set timeZone($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeZone() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeZone() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
