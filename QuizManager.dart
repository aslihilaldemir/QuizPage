import 'package:quiz_app/Services/Question.dart';
import 'Option.dart';
import 'package:http/http.dart' as http;
import'dart:convert' as converter;

class QuizManager{
  QuizManager() {


    _questions.add(Question('5+3=?',
      [Option('8', 20),
        Option('0', 0),
        Option('15', 0),
        Option('2', 0),
      ],
    )
    );

    _questions.add(Question('20/5=?',
      [Option('15', 0),
        Option('100', 0),
        Option('4', 20),
        Option('25', 0),
      ],
    )
    );

    _questions.add(Question('4*0?',
      [Option('4', 0),
        Option('0', 20),
        Option('1', 0),
        Option('40', 0),
      ],
    )
    );


    _questions.add(Question('80-110?',
      [Option('30', 0),
        Option('110', 0),
        Option('-30', 20),
        Option('-110', 0),
      ],
    )
    );

    _questions.add(Question('58*1?',
      [Option('1', 0),
        Option('5', 0),
        Option('8', 0),
        Option('58', 20),
      ],
    )
    );

    _questions.shuffle();
    for(var question in _questions){
      question.options.shuffle();
    }

  LoadQuestions(5);


  }
Future<void> LoadQuestions(int numberOfQuestions) async
  {
    var url=
        'https://opentdb.com/api.php?amount=$numberOfQuestions&category=19&difficulty=easy&type=multiple';

    var response=await http.get(url);
  print(response.statusCode);
  if(response.statusCode==200)
    {
     // print(response.body);
     Map<String, dynamic>  json=converter.jsonDecode(response.body);
print(json['response_code']);
    // print(json['results'][0]['question']);
     //print(json['results'][1]['question']);
     //print(json['results'][2]['question']);
    // print(json['results'][3]['question']);
    // print(json['results'][4]['question']);
     //for(var question in json['results']){
      // print(question['question']);
       //print(question['correct_answer']);
      // print(question['incorrect_answers']);
    // }
     for(int i=0; i<json['results'].lenght;i++){
       var questionJson=json['results'][i];
       print(questionJson['question']);
       print(questionJson['correct_answer']);
        print(questionJson['incorrect_answers']);
        List<Option> options=[];
        options.add(Option(questionJson['correct_answer'],25));

       for(int j=0; j<questionJson['incorrect_answers'].lenght;j++){
         options.add(Option(questionJson['incorrect_answers'][j],0));
       }
       Question question=Question(questionJson['question'], options);
     _questions.add(question);
     }
     _questions.shuffle();
     for(var question in _questions){
       question.options.shuffle();
     }
    }
  }




  List<Question>_questions=[];
  int _score=0;
  int currentQuestionId=0;

  void nextQuestion(int score){



  if(currentQuestionId<_questions.length){
    _score += score;
  currentQuestionId++;
}}


int getTotalScore() =>_score;
int getCurrentId() => currentQuestionId +1;
  int totalQuestionNumber() => _questions.length;
bool isFinished() {
    return currentQuestionId>=_questions.length ;

}

Question getCurrentQuestion(){
    return _questions[currentQuestionId];
  }
}