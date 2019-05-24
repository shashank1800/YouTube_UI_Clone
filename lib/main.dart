import 'package:flutter/material.dart';
import 'VideoCard.dart';

void main() => runApp(new MaterialApp(
      home: HomePage(),
      title: 'YouTube',
      debugShowCheckedModeBanner: false,
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.white,
          title: Text("YouTube",style: TextStyle(color: Colors.black,fontWeight:FontWeight.w800,fontSize: 20.0 ),),
          titleSpacing: 0.0,
          leading: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Image.asset("assets/images/app_icon.png"),),
          elevation: 1.0,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(icon:Icon(Icons.videocam), color: Colors.black45, onPressed: () {},),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(icon:Icon(Icons.search), color: Colors.black45, onPressed: () {},),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(icon:Icon(Icons.account_circle), color: Colors.black45, onPressed: () {},),
            ),
          ],
        ),
        body: YouTubeMainBody(),
      ),
    );
  }
}


class YouTubeMainBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return VideoCard();
  }
}
