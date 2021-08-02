import 'package:chopper/chopper.dart';
import 'package:indonesian_news_app/model/news_provider_list_response.dart';
import 'package:indonesian_news_app/utils/model_converter.dart';

part 'news_provider_list_service.chopper.dart';

@ChopperApi()
abstract class NewsProviderListService extends ChopperService{

  static NewsProviderListService create(){
    final client = ChopperClient(
      baseUrl: "https://berita-indo-api.vercel.app/",
      services: [
        _$NewsProviderListService(),
      ],
      interceptors: [HttpLoggingInterceptor()],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
    );

    return _$NewsProviderListService(client);
  }

  @Get(path: '.')
  Future<Response<NewsProviderListResponse>> getNewsProvider();
}