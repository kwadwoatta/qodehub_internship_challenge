import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/news_api_service.dart';
import '../home_page/home_page.dart';

class AppWidget extends StatelessWidget {
  //* This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => NewsApiService.create(),
      dispose: (_, NewsApiService newsService) => newsService.client.dispose(),
      builder: (_, __) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Qodehub Challenge',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Color(0xFF26ac80),
        ),
        home: HomePage(),
      ),
    );
  }
}
