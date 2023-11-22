//
//  Generated code. Do not modify.
//  source: syano_url_shortener.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'syano_url_shortener.pb.dart' as $0;

export 'syano_url_shortener.pb.dart';

@$pb.GrpcServiceName('com.syano.UrlService')
class UrlServiceClient extends $grpc.Client {
  static final _$createUrl = $grpc.ClientMethod<$0.CreateUrlRequest, $0.CreateUrlResponse>(
      '/com.syano.UrlService/CreateUrl',
      ($0.CreateUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateUrlResponse.fromBuffer(value));
  static final _$getUrl = $grpc.ClientMethod<$0.GetUrlRequest, $0.GetUrlResponse>(
      '/com.syano.UrlService/GetUrl',
      ($0.GetUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetUrlResponse.fromBuffer(value));
  static final _$getAllUrlsOfUser = $grpc.ClientMethod<$0.UserEmail, $0.GetShortUrlsResponse>(
      '/com.syano.UrlService/GetAllUrlsOfUser',
      ($0.UserEmail value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetShortUrlsResponse.fromBuffer(value));
  static final _$updateUrl = $grpc.ClientMethod<$0.UpdateUrlRequest, $0.UpdateUrlResponse>(
      '/com.syano.UrlService/UpdateUrl',
      ($0.UpdateUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateUrlResponse.fromBuffer(value));
  static final _$deleteUrl = $grpc.ClientMethod<$0.DeleteUrlRequest, $0.DeleteUrlResponse>(
      '/com.syano.UrlService/DeleteUrl',
      ($0.DeleteUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteUrlResponse.fromBuffer(value));

  UrlServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateUrlResponse> createUrl($0.CreateUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createUrl, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUrlResponse> getUrl($0.GetUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUrl, request, options: options);
  }

  $grpc.ResponseStream<$0.GetShortUrlsResponse> getAllUrlsOfUser($0.UserEmail request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$getAllUrlsOfUser, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.UpdateUrlResponse> updateUrl($0.UpdateUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUrl, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteUrlResponse> deleteUrl($0.DeleteUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteUrl, request, options: options);
  }
}

@$pb.GrpcServiceName('com.syano.UrlService')
abstract class UrlServiceBase extends $grpc.Service {
  $core.String get $name => 'com.syano.UrlService';

  UrlServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateUrlRequest, $0.CreateUrlResponse>(
        'CreateUrl',
        createUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateUrlRequest.fromBuffer(value),
        ($0.CreateUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUrlRequest, $0.GetUrlResponse>(
        'GetUrl',
        getUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUrlRequest.fromBuffer(value),
        ($0.GetUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserEmail, $0.GetShortUrlsResponse>(
        'GetAllUrlsOfUser',
        getAllUrlsOfUser_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.UserEmail.fromBuffer(value),
        ($0.GetShortUrlsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUrlRequest, $0.UpdateUrlResponse>(
        'UpdateUrl',
        updateUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUrlRequest.fromBuffer(value),
        ($0.UpdateUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteUrlRequest, $0.DeleteUrlResponse>(
        'DeleteUrl',
        deleteUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteUrlRequest.fromBuffer(value),
        ($0.DeleteUrlResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateUrlResponse> createUrl_Pre($grpc.ServiceCall call, $async.Future<$0.CreateUrlRequest> request) async {
    return createUrl(call, await request);
  }

  $async.Future<$0.GetUrlResponse> getUrl_Pre($grpc.ServiceCall call, $async.Future<$0.GetUrlRequest> request) async {
    return getUrl(call, await request);
  }

  $async.Stream<$0.GetShortUrlsResponse> getAllUrlsOfUser_Pre($grpc.ServiceCall call, $async.Future<$0.UserEmail> request) async* {
    yield* getAllUrlsOfUser(call, await request);
  }

  $async.Future<$0.UpdateUrlResponse> updateUrl_Pre($grpc.ServiceCall call, $async.Future<$0.UpdateUrlRequest> request) async {
    return updateUrl(call, await request);
  }

  $async.Future<$0.DeleteUrlResponse> deleteUrl_Pre($grpc.ServiceCall call, $async.Future<$0.DeleteUrlRequest> request) async {
    return deleteUrl(call, await request);
  }

  $async.Future<$0.CreateUrlResponse> createUrl($grpc.ServiceCall call, $0.CreateUrlRequest request);
  $async.Future<$0.GetUrlResponse> getUrl($grpc.ServiceCall call, $0.GetUrlRequest request);
  $async.Stream<$0.GetShortUrlsResponse> getAllUrlsOfUser($grpc.ServiceCall call, $0.UserEmail request);
  $async.Future<$0.UpdateUrlResponse> updateUrl($grpc.ServiceCall call, $0.UpdateUrlRequest request);
  $async.Future<$0.DeleteUrlResponse> deleteUrl($grpc.ServiceCall call, $0.DeleteUrlRequest request);
}
