//
//  Generated code. Do not modify.
//  source: signup_login.proto
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

import 'signup_login.pb.dart' as $0;

export 'signup_login.pb.dart';

@$pb.GrpcServiceName('com.auth.AuthService')
class AuthServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/com.auth.AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$signup = $grpc.ClientMethod<$0.SignupRequest, $0.SignupResponse>(
      '/com.auth.AuthService/Signup',
      ($0.SignupRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignupResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.SignupResponse> signup($0.SignupRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$signup, request, options: options);
  }
}

@$pb.GrpcServiceName('com.auth.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'com.auth.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignupRequest, $0.SignupResponse>(
        'Signup',
        signup_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignupRequest.fromBuffer(value),
        ($0.SignupResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre($grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.SignupResponse> signup_Pre($grpc.ServiceCall call, $async.Future<$0.SignupRequest> request) async {
    return signup(call, await request);
  }

  $async.Future<$0.LoginResponse> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.SignupResponse> signup($grpc.ServiceCall call, $0.SignupRequest request);
}
