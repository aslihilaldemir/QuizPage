import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/QuizPage.dart';


void gotoQuizPage(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizPage()),);
}
void gotoSecondQuizPage(BuildContext context){
  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizPage()),);
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FIRST QUIZ'),
        backgroundColor: Colors.grey,

      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,


        children: [
          Container(


            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10) ,

            child:Center(
              child: Text('Sınav Süresi 50 Dakikadır. Başarılar!',
            style: TextStyle(
              fontSize: 20,
              color: Colors.cyan,
              fontWeight: FontWeight.bold,
            ),

            ),

          ),),
          SizedBox(height: 60,),
          RaisedButton(onPressed: (){gotoQuizPage(context);},
            child: Text('Math Exam Start'),
          ),
          RaisedButton(onPressed: (){gotoSecondQuizPage(context);},
            child: Text('Country Exam Start'),
          )
  ],
      )
    );
  }
}
