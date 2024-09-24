import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/home_screen.dart';
import 'package:quiz_app/Screens/quiz_screen.dart';
import 'package:quiz_app/models/model.dart';

class ResultScreen extends StatelessWidget {
  final int totalQuestions ;
  final int totalAttempts ;
  final int totalCorrect ;
  final int totalScore ;
  final QuizSet quizSet ;

  const ResultScreen({
    super.key, required this.totalQuestions, 
    required this.totalAttempts, 
    required this.totalCorrect, 
    required this.totalScore, 
    required this.quizSet,
    });

  @override
  Widget build(BuildContext context) {
    String feedback = totalScore < 30 
        ? "You Failed !" 
        : totalScore < 60 
            ? "Good job !" 
            : totalScore < 80 
                ? "Great !" 
                : " Awesome !" ;
    return Scaffold(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80),
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
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child:Text(
                    "Quiz Result " ,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    feedback,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 20),
                    Text("You Have Scorred",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),
                    SizedBox(height: 10),
                    Text(
                      "${totalScore} / ${totalQuestions * 10 }" ,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => 
                            QuizScreen(quizSet: quizSet),));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10 , horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors:[
                                Colors.black,
                                Colors.red,
                              ],
                            ),
                          ),
                          child: Text("Repeat" , 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => 
                            HomeScreen()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10 , horizontal: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors:[
                                Colors.black,
                                Colors.red,
                              ],
                            ),
                          ),
                          child: Text("Home" , 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                          ),
                        ),
                    ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}