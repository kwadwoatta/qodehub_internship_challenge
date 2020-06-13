import 'package:flutter/material.dart';

import 'widgets/news_list.dart';

//* This widget is the homepage; shows a list of the news
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * .03,
                  left: screenWidth * .05,
                  bottom: 0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'News',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * .1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(
                      color: Color(0xFFf4f4f4),
                      thickness: screenHeight * .0035,
                    )
                  ],
                ),
              ),
            ),
            Expanded(child: NewsList()),
          ],
        ),
      ),
    );
  }
}
