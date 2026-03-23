import 'package:MysteryTasks/src/const_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Start your first task!',
                  style: TextStyle(
                    color: textColorBlack,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  width: MediaQuery.of(context).size.width*0.3,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                    onPressed: (){
                      setState(() {
                        
                      });
                    }, 
                    child: Text(
                      '+ Task',
                      style: TextStyle(
                        color: textColorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                      ),
                    )
                  ),
                )

              ],
            ),
          ),
        ),
      )
    );
  }
}