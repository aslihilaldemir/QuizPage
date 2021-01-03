import 'package:flutter/material.dart';
import 'package:quiz_app/Services/QuizManager.dart';
import 'package:quiz_app/Screens/ResultPage.dart';
import 'package:quiz_app/Services/Question.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuizManager _manager=QuizManager();
  FutureBuilder<void>quizloader;

  List<Widget> getOptions(Question question){
    List<Widget> optionButtons = [];
    for(int i=0; i<question.options.length; i++){
      optionButtons.add(
        FlatButton(
        onPressed :(){
          _manager.nextQuestion(_manager.getCurrentQuestion().options[i].score);
          if(_manager.isFinished()) {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ResultPage(score:_manager.getTotalScore() ,))
            );
          }
          setState(() {

          });
        },
        child: Container(

          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '${_manager.getCurrentQuestion().options[i].text}',

            style:TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
      );
    }
    return optionButtons;

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
        'Questions ${_manager.getCurrentId()}/${_manager.totalQuestionNumber()}',

      ),
        backgroundColor: Colors.red,

    ),
        body:



        Container(
    padding: EdgeInsets.all(10),
    child: Column(
      children: [

        Expanded(
          flex:1,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text(
              '${_manager.getCurrentQuestion().text}',
                  style: TextStyle(
            fontSize:15,
    ),
            ),
          ),
        ),
        Expanded
          (
            flex:8,
            child: Container(

          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: getOptions(_manager.getCurrentQuestion() ) ,

          ),
        )
        )
      ],

    )
    )
    );
  }
}
