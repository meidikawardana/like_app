import 'package:flutter/material.dart';

void main() => runApp(AplikasiHelloWorld());

class InstagramCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/insta_profpic.jpg',
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                  margin: EdgeInsets.all(10),
                ),
                Expanded(
                  child: Text(
                    'meidika_wardana',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/insta_pic.jpg'),
                )
              ],
            ),
            Container(
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Image.asset(
                      'images/ic_love.png',
                      fit: BoxFit.contain,
                      width: 24,
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(0.0),
                  ),
                  Container(
                    width: 48,
                    child: IconButton(
                      icon: Image.asset(
                        'images/ic_comment.png',
                        fit: BoxFit.contain,
                      ),
                      onPressed: () {},
                      padding: EdgeInsets.all(0.0),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: IconButton(
                        icon: Image.asset(
                          'images/ic_send.png',
                          fit: BoxFit.contain,
                        ),
                        onPressed: () {},
                        padding: EdgeInsets.all(0.0),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  IconButton(
                    icon: Image.asset(
                      'images/ic_save.png',
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.all(0.0),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    '1 like',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 5, bottom: 10),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: new TextSpan(
                      // Note: Styles for TextSpans must be explicitly defined.
                      // Child text spans will inherit styles from parent
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'meidika_wardana ',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(text: 'Lagi lucu2nya nih ... he3'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AplikasiHelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Hello World',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: InstagramCard(),
      ),
    );
  }
}
