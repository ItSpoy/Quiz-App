import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/quiz_screen.dart';
import 'package:quiz_app/data/data.dart';
import 'package:quiz_app/models/model.dart';

class CategorySetScreen extends StatelessWidget {
  final Category category;

  const CategorySetScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
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
        child: SingleChildScrollView(
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
                      "${category.name} Quiz " ,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: category.quizSets.length,
                itemBuilder:(context, index) {
                final quizSet = category.quizSets[index];
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: 
                      (context) => QuizScreen(quizSet: quizSet),));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1,
                      padding: EdgeInsets.symmetric(vertical:  10 , horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            category.image,
                            height: 40,
                            width: 40,
                          ),
                          SizedBox(width:30),
                          Text(quizSet.name , 
                          style: TextStyle(
                            fontSize: 18 ,
                            fontWeight:FontWeight.w400,
                          ),),
                        ],
                      ),
                    ),
                  ),
                );
              },)
            ],
          ),
        ),
      ),
    );
  }
}