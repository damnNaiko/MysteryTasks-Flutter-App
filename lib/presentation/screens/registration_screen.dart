import 'package:MysteryTasks/presentation/screens/home_screen.dart';
import 'package:MysteryTasks/src/const_colors.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: [
            Text(
              "Type your name",
              style: TextStyle(
                color: textColorBlack,
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),
            ),

            SizedBox(height: 30),

            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                controller: nameController,
                cursorColor: Colors.black,
                style: TextStyle(
                  color: textColorBlack,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: fillField,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black, width: 0),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: transparent, width: 0)
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 2, color: Colors.black)
                  )
                ),
              ),
            ),

            SizedBox(height: 30),

            Container(
              width: MediaQuery.of(context).size.width*0.3,
              child: ElevatedButton(
                onPressed: (){
                  setState(() {
                    if(nameController.text.trim().isEmpty){
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Enter your login!"),
                          backgroundColor: Colors.black,
                          duration: Duration(seconds: 2),
                        )
                      );
                    }else{
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomeScreen())
                      );
                    }
                  });
                }, 
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  )
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: textColorWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ),
            )
          ],
        ),
      )
    );
  }
}