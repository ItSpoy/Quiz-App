import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/result_screen.dart';
import 'package:quiz_app/models/model.dart';

class QuizScreen extends StatefulWidget {
  final QuizSet quizSet;

  const QuizScreen({super.key, required this.quizSet});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  List<int?> selectedAnswer = [];

  @override
  void initState() {
    super.initState();
    selectedAnswer = List<int?>.filled(widget.quizSet.questions.length , null);
  }

  void goToNextQuestion(){
    if (currentQuestionIndex < widget.quizSet.questions.length -1 ){
      setState(() {
        currentQuestionIndex++;
      });
    }
  }
  void goToPreviousQuestion(){
    if (currentQuestionIndex > 0 ){
      setState(() {
        currentQuestionIndex--;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    final Question currentQuestion = 
    widget.quizSet.questions[currentQuestionIndex];
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              Colors.black,
              Colors.red,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Row(
                children: [
                  SizedBox(width: 20),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,
                    color: Colors.white,
                    size: 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15 , vertical:  20),
                    child:Text(
                      widget.quizSet.name ,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: MediaQuery.of(context).size.width * 1.15 ,
                width: MediaQuery.of(context).size.height,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      currentQuestion.question,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    ...currentQuestion.options.asMap().entries.map((entry){
                      final index = entry.key;
                      final option = entry.value;
                      return GestureDetector(
                        onTap: (){
                          setState(() {
                            selectedAnswer[currentQuestionIndex] = index ;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 18 , horizontal: 5),
                          margin: EdgeInsets.symmetric(vertical: 6),
                          decoration: BoxDecoration(
                            color: selectedAnswer[currentQuestionIndex] == index 
                                    ? Colors.red[800]
                                    : Colors.white,
                            border: Border.all(
                              width: 2,
                              color: selectedAnswer[currentQuestionIndex] == index 
                                    ? Colors.black 
                                    : Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              option,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: selectedAnswer[currentQuestionIndex] == index 
                                    ? Colors.white 
                                    : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ),
                      );
                    })
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  currentQuestionIndex > 0 
                      ? ElevatedButton(
                        onPressed: goToPreviousQuestion, 
                        child: Text(
                          "Back" ,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ))
                    : SizedBox(),
                  ElevatedButton(
                      onPressed: (){
                        if ( currentQuestionIndex < widget.quizSet.questions.length -1 ){
                          goToNextQuestion();
                        }
                        else{
                          int totalCorrect = 0;
                          for ( int i = 0; 
                              i < widget.quizSet.questions.length;
                              i++){
                                if (selectedAnswer[i] == widget.quizSet.questions[i].selectedIndex){
                                  totalCorrect++;
                                }
                          }
                          Navigator.pushReplacement(context, MaterialPageRoute
                          (builder: (context) => ResultScreen(
                            totalQuestions: widget.quizSet.questions.length,
                            totalAttempts: widget.quizSet.questions.length,
                            totalCorrect: totalCorrect,
                            totalScore: totalCorrect * 10 ,
                            quizSet: widget.quizSet,
                          ),));
                        }
                      }, 
                      child: Text(
                        currentQuestionIndex == 
                                widget.quizSet.questions.length - 1 
                            ? "Submit" 
                            : "Next",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                  ),
                ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}