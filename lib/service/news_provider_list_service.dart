import 'package:chopper/chopper.dart';
import 'package:indonesian_news_app/model/news_provider_list_response.dart';

part 'news_provider_list_service.chopper.dart';

@ChopperApi()
abstract class NewsProviderListService extends ChopperService{

  static NewsProviderListService create(){
    final client = ChopperClient(
      baseUrl: "https://berita-indo-api.vercel.app/v1/",
      services: [
        _$NewsProviderListService(),
      ],
      interceptors: [HttpLoggingInterceptor()],
      errorConverter: JsonConverter(),
    );

    return _$NewsProviderListService(client);
  }

  @Get(path: '/')
  Future<Response<NewsProviderListResponse>> getNewsProvider();
}