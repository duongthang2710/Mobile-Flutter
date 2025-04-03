import 'package:flutter/material.dart';
import 'package:homework_1/nutritional_box.dart';
import 'package:homework_1/title_box.dart';
import 'package:homework_1/food_box.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            title: Text(
                'Breakfast',
                style: TextStyle(fontSize: 27)
            ),
            centerTitle: true,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Transform.scale(
                scale: 1.4,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Align(
                    child: Image.asset(
                      'assets/icons/arrow_left.png',
                      fit: BoxFit.fitHeight,
                    ),
                  )
                ),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                //: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: ListView(

                  children: [
                    TitleBox(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "452",
                                style: TextStyle(
                                  fontSize: 62,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "kcal",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                ),
                              ),
                            ],

                          ),
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(
                            child: Text(
                              "Normal",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        NutritionalBox(color: Colors.purple, name: "Protein", maxVal: 80, val: 13),
                        NutritionalBox(color: Colors.orange, name: "Fat", maxVal: 60, val: 20),
                        NutritionalBox(color: Colors.black87, name: "Carbs", maxVal: 200, val: 19),
                      ],
                    ),
                    SizedBox(height: 25,),

                    Column(
                      children: [
                        FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Fried eggs", kcal: '378', protein: '12', fat: '17', carbs: '17', weight: '100g',),
                        SizedBox(height: 15,),
                        FoodBox(name: "Mug of coffee", kcal: '74', protein: '1', fat: '3', carbs: '2', weight: '450ml',),
                        SizedBox(height: 15,),

                      ],
                    ),
                    SizedBox(height: 15,)
                  ],
                ),
              ),
            ]
          )
        ),
      ),
    );
  }
}
