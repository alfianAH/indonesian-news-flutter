import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:indonesian_news_app/model/news_provider_list_response.dart';
import 'package:indonesian_news_app/service/news_provider_list_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget{
  final newsProviderList = ['CNN News', 'CNBC News',
    'Okezone News', 'Tribun News'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Response<NewsProviderListResponse>>(
        future: Provider.of<NewsProviderListService>(context).getNewsProvider(),
        builder: (context, snapshot){
          // If connection state is done, ...
          if(snapshot.connectionState == ConnectionState.done){
            // If snapshot has error, ...
            if(snapshot.hasError){
              // Show error message
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  snapshot.error.toString(),
                ),
              );
            }
            
            final newsProviderListResponse = snapshot.requireData.body;
            
            // If news response is null, ...
            if(newsProviderListResponse == null){
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Tidak ada hasil',
                ),
              );
            }
            
            if(newsProviderListResponse.listApi != null){
              return ListView.builder(
                itemCount: newsProviderList.length,
                itemBuilder: (BuildContext context, int index){
                  final newsProvider = newsProviderListResponse.listApi![newsProviderList[index]];
                  final newsProviderLink = newsProvider['all'];

                  return Text(newsProviderLink);
                }
              );
            } else{
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Total berita: 0',
                ),
              );
            }
          } else{ // Else, show loading
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }
      ),
    );
  }
}