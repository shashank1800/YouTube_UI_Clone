import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final titles = ['Lorem ipsum dolor sit amet, consecte elit.','Ut aliquam enatis lectus magna on.','Consectetur sada pulvinar elementum.'];
    final videos = ['assets/images/nature1.jpg','assets/images/nature2.jpg','assets/images/nature3.jpg'];
    final channelName = ['MyChannel','New Channel','Shashank Bhat'];
    final views = ['10M views','10K views','10 views'];
    final updated = ['1 week ago','2 week ago','3 hours ago'];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            children: <Widget>[
              Image.asset(videos[index],height: 220,width: double.infinity,fit: BoxFit.cover,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Icon(Icons.supervised_user_circle, color: Colors.black45,size: 40.0,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(titles[index],style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w800),),
                        SizedBox(height: 5,),
                        Row(
                          children: <Widget>[
                            Text(channelName[index],style: TextStyle(fontSize: 10.0,),textAlign: TextAlign.start,),
                            SizedBox(width: 5,),
                            Text(views[index],style: TextStyle(fontSize: 10.0,),textAlign: TextAlign.start,),
                            SizedBox(width: 5,),
                            Text(updated[index],style: TextStyle(fontSize: 10.0,),textAlign: TextAlign.start,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        );
      },
    );
  }
}
