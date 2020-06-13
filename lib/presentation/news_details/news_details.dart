import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class NewsDetails extends StatelessWidget {
  final String id;
  final String title;
  final String author;
  final String image;
  final String text;

  NewsDetails({
    @required this.id,
    @required this.title,
    @required this.author,
    @required this.image,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            //* title bar
            Padding(
              padding: EdgeInsets.only(
                top: screenHeight * .014,
                bottom: screenHeight * .014,
                left: screenWidth * .02,
                right: screenWidth * .15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF407fd8),
                    ),
                  ),
                  SizedBox(width: screenWidth * .07),
                  Expanded(
                    child: Center(
                      child: Text(
                        title,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * .049,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //* image
            TransitionToImage(
              image: AdvancedNetworkImage(
                image,
                loadedCallback: () {
                  print('It works!');
                },
                loadFailedCallback: () {
                  print('Oh, no!');
                },
              ),
              loadingWidgetBuilder: (_, __, ___) => Container(
                height: screenHeight * .25,
                width: screenWidth,
                color: Colors.grey.withOpacity(.17),
                child: Center(
                  child: SpinKitCubeGrid(
                    color: Color(0xFF26ac80),
                  ),
                ),
              ),
              fit: BoxFit.cover,
              placeholder: const Icon(Icons.refresh),
              height: screenHeight * .25,
              width: screenWidth,
              enableRefresh: true,
            ),

            //*title and author
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: screenWidth * .046,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * .01),
                  Text(
                    author.replaceAll(RegExp(r"\n"), " "),
                    style: TextStyle(
                      color: Color(0xFFb7b7b8),
                      fontSize: screenWidth * .04,
                    ),
                  ),
                  SizedBox(height: screenHeight * .01)
                ],
              ),
            ),

            //* description
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * .045),
                itemCount: 1,
                itemBuilder: (_, __) => Text(
                  text.replaceAll(RegExp(r"<ul>|<li>|</li>"), ""),
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Color(0xFF919191),
                    fontSize: screenWidth * .045,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
