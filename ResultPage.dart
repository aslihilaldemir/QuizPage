import 'package:flutter/material.dart';


class ResultPage extends StatefulWidget {
  int score;
  ResultPage({Key key, this.score}):super(key:key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          CircleAvatar(

           child: Image.asset('Assets/success.png', width: 500,height: 500),

          ),
          Text('Tebrikler puanınız', style: TextStyle(fontSize: 30 ),),
          Text(
    '${widget.score}',
    style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.w900 ),),
        ],
      )
    );
  }
}
