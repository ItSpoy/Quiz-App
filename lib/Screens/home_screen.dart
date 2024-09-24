import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/category_set_screen.dart';
import 'package:quiz_app/data/data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child:Text("Test Your Skills" ,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric( horizontal: 30 ),
                child:Text("Prepare Yourself!" ,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white60,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(height: 50),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount : Data.categories.length,
                padding: EdgeInsets.all(15),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (MediaQuery.of(context).size.height - 50 - 25) / (4 * 230),
                  mainAxisSpacing :10,
                  crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context , index){
                    final category = Data.categories[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context ,MaterialPageRoute(builder: 
                        (context) => CategorySetScreen(category: category,)) );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 20 , horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10),
                            child: Image.asset(category.image,
                            height: 100,
                            width: 100,
                            ),),
                            SizedBox(height: 10),
                            Text(category.name , 
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                            ) ,
                          ],
                        ),
                      ),
                    );
                  },
                
              )
            ],
          ),
        ),
      ),
    );
  }
}