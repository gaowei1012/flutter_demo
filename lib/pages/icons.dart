import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  final _imageItem = [
    'http://p1.music.126.net/KIDETOwUt5EQxn4fqMELGg==/109951164099684560.jpg',
    'http://p1.music.126.net/Zam6Xfd8eFGzlBChmY0iBw==/109951164099677716.jpg',
    'http://p1.music.126.net/RNj0oKTLPJjUdSBFTrXvZw==/109951164099672326.jpg',
    'http://p1.music.126.net/B-Xa2CPaQ2h6PNXX1lCoGQ==/109951164099658893.jpg',
    'http://p1.music.126.net/kvMqBDWJWPBvL8kEykwLwQ==/109951164099667333.jpg',
    'http://p1.music.126.net/koAV6LNv0zsXeKN-go6pIw==/109951164099664820.jpg',
    'http://p1.music.126.net/ShQomjBLu9OjZZRaDa8pGA==/109951164096950211.jpg',
    'http://p1.music.126.net/yB_xRugQa2netMeBgnIG0Q==/109951164099665591.jpg',
    'http://p1.music.126.net/_2Lr_C_5kGNrQMv89mBRpA==/109951164098388725.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: Center(
          child: ListView(
            children: <Widget>[
              Container(
                height: 160,
                child: Swiper(
                  itemCount: _imageItem.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      _imageItem[index],
                      fit: BoxFit.fill,
                    );
                  },
                ),
              ),
              Container(
                child: ListTile(
                  title: Text('test'),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}