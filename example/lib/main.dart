import 'package:flutter/material.dart';
import 'package:vimeoplayer/vimeoplayer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        accentColor: Color(0xFF22A3D2),
      ),
      home: VideoScreen(),
    );
  }
}

class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xFF15162B),
        appBar: MediaQuery.of(context).orientation == Orientation.portrait
            ? AppBar(
                leading: BackButton(color: Colors.white),
                title: Text('Название видео'),
                backgroundColor: Color(0xAA15162B),
              )
            : PreferredSize(
                child: Container(
                  color: Colors.transparent,
                ),
                preferredSize: Size(0.0, 0.0),
              ),
        body: ListView(children: <Widget>[
          VimeoPlayer(id: '395212534', autoPlay: true),
        ]));
  }
}
