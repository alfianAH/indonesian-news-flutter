import 'package:flutter/material.dart';
import 'package:indonesian_news_app/service/news_provider_list_service.dart';
import 'package:logging/logging.dart';
import 'package:indonesian_news_app/ui/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  _setupLogging();
  runApp(MyApp());
}

void _setupLogging(){
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => NewsProviderListService.create(),
      dispose: (_, NewsProviderListService service) => service.client.dispose(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      )
    );
  }
}
