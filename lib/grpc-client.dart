// ignore: file_names
import 'package:grpc/grpc.dart';
import 'package:syano_url_shortner_client/generated/syano_url_shortener.pbgrpc.dart';

class GrpcClient {
  late UrlServiceClient stub;

  Future<void> init() async {
    final channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    stub = UrlServiceClient(channel);
  }

  Future<String> shortenUrl(String longUrl) async {
    final request = CreateUrlRequest()..longUrl = longUrl;
    final response = await stub.createUrl(request);

    return "localhost:8080/${response.entity.shortUrl}";
  }
}