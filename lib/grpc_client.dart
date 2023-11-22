import 'package:grpc/grpc.dart';
import 'package:syano_url_shortner_client/generated/syano/syano_url_shortener.pbgrpc.dart';
// import 'package:syano_url_shortner_client/generated/auth/signup_login.pbgrpc.dart';

class GrpcClient {
  late UrlServiceClient urlStub;

  Future<void> initialize() async {
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    urlStub = UrlServiceClient(channel);
  }

  Future<String> shortenUrl(String longUrl, {String? userEmail}) async {

    if (longUrl.isEmpty) {
      throw Exception('No url provided');
    }

    final request = CreateUrlRequest()
    ..longUrl = longUrl
    ..email = userEmail ?? '';
    final response = await urlStub.createUrl(request);

    return "localhost:8080/${response.entity.shortUrl}";
  }
}

