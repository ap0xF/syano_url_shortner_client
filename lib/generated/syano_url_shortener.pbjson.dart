//
//  Generated code. Do not modify.
//  source: syano_url_shortener.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use entityDescriptor instead')
const Entity$json = {
  '1': 'Entity',
  '2': [
    {'1': 'longUrl', '3': 2, '4': 1, '5': 9, '10': 'longUrl'},
    {'1': 'shortUrl', '3': 3, '4': 1, '5': 9, '10': 'shortUrl'},
    {'1': 'createdAt', '3': 4, '4': 1, '5': 11, '6': '.com.syano.Timestamp', '10': 'createdAt'},
    {'1': 'updatedAt', '3': 5, '4': 1, '5': 11, '6': '.com.syano.Timestamp', '10': 'updatedAt'},
    {'1': 'clickCount', '3': 6, '4': 1, '5': 5, '10': 'clickCount'},
    {'1': 'expirationTime', '3': 7, '4': 1, '5': 9, '10': 'expirationTime'},
  ],
};

/// Descriptor for `Entity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List entityDescriptor = $convert.base64Decode(
    'CgZFbnRpdHkSGAoHbG9uZ1VybBgCIAEoCVIHbG9uZ1VybBIaCghzaG9ydFVybBgDIAEoCVIIc2'
    'hvcnRVcmwSMgoJY3JlYXRlZEF0GAQgASgLMhQuY29tLnN5YW5vLlRpbWVzdGFtcFIJY3JlYXRl'
    'ZEF0EjIKCXVwZGF0ZWRBdBgFIAEoCzIULmNvbS5zeWFuby5UaW1lc3RhbXBSCXVwZGF0ZWRBdB'
    'IeCgpjbGlja0NvdW50GAYgASgFUgpjbGlja0NvdW50EiYKDmV4cGlyYXRpb25UaW1lGAcgASgJ'
    'Ug5leHBpcmF0aW9uVGltZQ==');

@$core.Deprecated('Use createUrlRequestDescriptor instead')
const CreateUrlRequest$json = {
  '1': 'CreateUrlRequest',
  '2': [
    {'1': 'longUrl', '3': 1, '4': 1, '5': 9, '10': 'longUrl'},
    {'1': 'expirationTime', '3': 2, '4': 1, '5': 11, '6': '.com.syano.Timestamp', '10': 'expirationTime'},
  ],
};

/// Descriptor for `CreateUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUrlRequestDescriptor = $convert.base64Decode(
    'ChBDcmVhdGVVcmxSZXF1ZXN0EhgKB2xvbmdVcmwYASABKAlSB2xvbmdVcmwSPAoOZXhwaXJhdG'
    'lvblRpbWUYAiABKAsyFC5jb20uc3lhbm8uVGltZXN0YW1wUg5leHBpcmF0aW9uVGltZQ==');

@$core.Deprecated('Use createUrlResponseDescriptor instead')
const CreateUrlResponse$json = {
  '1': 'CreateUrlResponse',
  '2': [
    {'1': 'entity', '3': 1, '4': 1, '5': 11, '6': '.com.syano.Entity', '10': 'entity'},
  ],
};

/// Descriptor for `CreateUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createUrlResponseDescriptor = $convert.base64Decode(
    'ChFDcmVhdGVVcmxSZXNwb25zZRIpCgZlbnRpdHkYASABKAsyES5jb20uc3lhbm8uRW50aXR5Ug'
    'ZlbnRpdHk=');

@$core.Deprecated('Use getUrlRequestDescriptor instead')
const GetUrlRequest$json = {
  '1': 'GetUrlRequest',
  '2': [
    {'1': 'shortUrl', '3': 1, '4': 1, '5': 9, '10': 'shortUrl'},
  ],
};

/// Descriptor for `GetUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUrlRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRVcmxSZXF1ZXN0EhoKCHNob3J0VXJsGAEgASgJUghzaG9ydFVybA==');

@$core.Deprecated('Use getUrlResponseDescriptor instead')
const GetUrlResponse$json = {
  '1': 'GetUrlResponse',
  '2': [
    {'1': 'longUrl', '3': 1, '4': 1, '5': 9, '10': 'longUrl'},
  ],
};

/// Descriptor for `GetUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUrlResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRVcmxSZXNwb25zZRIYCgdsb25nVXJsGAEgASgJUgdsb25nVXJs');

@$core.Deprecated('Use updateUrlRequestDescriptor instead')
const UpdateUrlRequest$json = {
  '1': 'UpdateUrlRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'longUrl', '3': 2, '4': 1, '5': 9, '10': 'longUrl'},
    {'1': 'shortUrl', '3': 3, '4': 1, '5': 9, '10': 'shortUrl'},
    {'1': 'expirationTime', '3': 4, '4': 1, '5': 11, '6': '.com.syano.Timestamp', '10': 'expirationTime'},
  ],
};

/// Descriptor for `UpdateUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUrlRequestDescriptor = $convert.base64Decode(
    'ChBVcGRhdGVVcmxSZXF1ZXN0Eg4KAmlkGAEgASgFUgJpZBIYCgdsb25nVXJsGAIgASgJUgdsb2'
    '5nVXJsEhoKCHNob3J0VXJsGAMgASgJUghzaG9ydFVybBI8Cg5leHBpcmF0aW9uVGltZRgEIAEo'
    'CzIULmNvbS5zeWFuby5UaW1lc3RhbXBSDmV4cGlyYXRpb25UaW1l');

@$core.Deprecated('Use updateUrlResponseDescriptor instead')
const UpdateUrlResponse$json = {
  '1': 'UpdateUrlResponse',
  '2': [
    {'1': 'entity', '3': 1, '4': 1, '5': 11, '6': '.com.syano.Entity', '10': 'entity'},
  ],
};

/// Descriptor for `UpdateUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUrlResponseDescriptor = $convert.base64Decode(
    'ChFVcGRhdGVVcmxSZXNwb25zZRIpCgZlbnRpdHkYASABKAsyES5jb20uc3lhbm8uRW50aXR5Ug'
    'ZlbnRpdHk=');

@$core.Deprecated('Use deleteUrlRequestDescriptor instead')
const DeleteUrlRequest$json = {
  '1': 'DeleteUrlRequest',
  '2': [
    {'1': 'shortUrl', '3': 1, '4': 1, '5': 9, '10': 'shortUrl'},
  ],
};

/// Descriptor for `DeleteUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUrlRequestDescriptor = $convert.base64Decode(
    'ChBEZWxldGVVcmxSZXF1ZXN0EhoKCHNob3J0VXJsGAEgASgJUghzaG9ydFVybA==');

@$core.Deprecated('Use deleteUrlResponseDescriptor instead')
const DeleteUrlResponse$json = {
  '1': 'DeleteUrlResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `DeleteUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteUrlResponseDescriptor = $convert.base64Decode(
    'ChFEZWxldGVVcmxSZXNwb25zZRIWCgZzdGF0dXMYASABKAlSBnN0YXR1cw==');

@$core.Deprecated('Use timestampDescriptor instead')
const Timestamp$json = {
  '1': 'Timestamp',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    {'1': 'time_zone', '3': 2, '4': 1, '5': 9, '10': 'timeZone'},
  ],
};

/// Descriptor for `Timestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampDescriptor = $convert.base64Decode(
    'CglUaW1lc3RhbXASGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxIbCgl0aW1lX3pvbmUYAiABKA'
    'lSCHRpbWVab25l');

