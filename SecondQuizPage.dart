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
  Future<void> quizloader;
  List<Widget> getOptions(Question question){
    List<Widget> optionButtons = [];
  }
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Questions',

          ),
          backgroundColor: Colors.blue,

        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child:Column(
              children: [

                Expanded(
                  flex:1,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      '${_manager.getCurrentQuestion().text}',
                      style: TextStyle(
                        fontSize:30,
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
                          children: [

                            FlatButton(
                              onPressed :(){

                              },
                              child: Container(

                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '${_manager.getCurrentQuestion().options[0].text}',

                                  style:TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            FlatButton(
                              onPressed :(){
                              },
                              child: Container(

                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '${_manager.getCurrentQuestion().options[1].text}',

                                  style:TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            FlatButton(
                              onPressed :(){},
                              child: Container(

                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '${_manager.getCurrentQuestion().options[2].text}',

                                  style:TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),

                            FlatButton(
                              onPressed :(){},
                              child: Container(

                                width: double.infinity,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  '${_manager.getCurrentQuestion().options[3].text}',

                                  style:TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),











                          ],

                        )
                    ))

              ],

            )
        )
    );
  }
}
