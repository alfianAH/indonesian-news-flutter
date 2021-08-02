// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_provider_list_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NewsProviderListService extends NewsProviderListService {
  _$NewsProviderListService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NewsProviderListService;

  @override
  Future<Response<NewsProviderListResponse>> getNewsProvider() {
    final $url = '/';
    final $request = Request('GET', $url, client.baseUrl);
    return client
        .send<NewsProviderListResponse, NewsProviderListResponse>($request);
  }
}
