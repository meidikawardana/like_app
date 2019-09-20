import 'package:flutter/material.dart';

void main() => runApp(AplikasiLikeInstagram());

class InstagramCards extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InstagramCardsState();
  }
}

class _InstagramCardsState extends State<InstagramCards> {
  int _likes = 0;
  bool _isLiked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Row(
              // row #1
              children: [
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
              //row #2
              children: <Widget>[
                Expanded(
                  child: Image.asset('images/insta_pic.jpg'),
                )
              ],
            ),
            Row(
              //row #3
              children: <Widget>[
                IconButton(
                  icon: (!_isLiked)
                      ? Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                          size: 30.0,
                        )
                      : Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 30.0,
                        ),
                  onPressed: () {
                    if (!_isLiked) {
                      setState(() {
                        _likes += 1;
                        _isLiked = true;
                      });
                    } else {
                      setState(() {
                        _likes -= 1;
                        _isLiked = false;
                      });
                    }
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/ic_comment.png',
                    fit: BoxFit.contain,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset(
                    'images/ic_send.png',
                    fit: BoxFit.contain,
                  ),
                  onPressed: () {},
                ),
                Expanded(
                  child: IconButton(
                    icon: Image.asset(
                      'images/ic_save.png',
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {},
                    padding: EdgeInsets.only(right: 10),
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
            Row(
              //row #4
              children: <Widget>[
                Container(
                  child: Text(
                    _likes.toString() + ' like',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  padding: EdgeInsets.only(left: 10),
                ),
              ],
            ),
            Row(
              //row #5
              children: <Widget>[
                Container(
                  child: RichText(
                    text: new TextSpan(
                      style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'meidika_wardana ',
                            style: new TextStyle(fontWeight: FontWeight.bold)),
                        TextSpan(
                            text:
                                'Lagi lucu2nya nih ... he3. Semoga jadi anak yang berbakti ke ortu :D'),
                      ],
                    ),
                  ),
                  padding: EdgeInsets.only(left: 10, top: 5, bottom: 10),
                  width: MediaQuery.of(context).size.width * 0.8,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class AplikasiLikeInstagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(body: InstagramCards() //Text('hi, this is body'),
          ),
    );
  }
}
