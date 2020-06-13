import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '../../../data/news_api_service.dart';
import '../../../model/built_news.dart';
import '../../news_details/news_details.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return FutureBuilder<Response<BuiltList<BuiltNews>>>(
      future: Provider.of<NewsApiService>(context).getNews(),
      builder: (
        BuildContext context,
        AsyncSnapshot<Response<BuiltList<BuiltNews>>> snapshot,
      ) {
        //* Shows a progress indicator whiles future is being processed
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SpinKitChasingDots(
                color: Color(0xFF26ac80),
                size: screenWidth * .25,
              ),
              SizedBox(height: screenHeight * .02),
              Text(
                'Fetching news, please wait...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * .045,
                ),
              )
            ],
          );
        }

        //* Checks if the promise (future in JS) is done
        else if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            print(snapshot.error.toString());
            return Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .1),
                child: Text(snapshot.error.toString()),
              ),
            );
          } else if (snapshot.hasData) {
            final BuiltList<BuiltNews> news = snapshot.data.body;

            return ListView.builder(
                itemCount: news.length,
                itemBuilder: (_, index) {
                  final singleNews = news[index];

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Hero(
                        tag: singleNews.id,
                        child: ListTile(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) => NewsDetails(
                                id: singleNews.id,
                                title: singleNews.title,
                                author: singleNews.author,
                                image: singleNews.image,
                                text: singleNews.text,
                              ),
                            ),
                          ),
                          title: Text(
                            singleNews.title.replaceAll(RegExp(r"\n"), " "),
                            style: TextStyle(
                              color: Color(0xFF272727),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: screenHeight * .01),
                              Text(
                                singleNews.author
                                    .replaceAll(RegExp(r"\n"), " "),
                                style: TextStyle(
                                  color: Color(0xFFb9b9bb),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFFb9b9bb),
                            size: screenWidth * .05,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: screenWidth * .045),
                        child: Divider(
                          color: Color(0xFFb9b9bb),
                        ),
                      )
                    ],
                  );
                });
          } else {
            return Center(
              child: Text('No data found!'),
            );
          }
        } else if (snapshot.connectionState == ConnectionState.none) {
          return Center(
            child: Text('Please check your internet connection'),
          );
        } else {
          return Center(
            child: Text('Nothing found!'),
          );
        }
      },
    );
  }
}
