import 'package:algoriza_task1/Login%20&%20Register%20Screens/LoginScreen.dart';
import 'package:algoriza_task1/Login%20&%20Register%20Screens/RegisterScreen.dart';
import 'package:algoriza_task1/Reusable%20Components/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_screen/OnbordingData.dart';
import 'package:flutter_onboarding_screen/flutteronboardingscreens.dart';

class BoardingScreen extends StatelessWidget {
  BoardingScreen({Key? key}) : super(key: key);
  final List<OnbordingData> list = [
    OnbordingData(
      imagePath: "assets/images/ridding_bicycle.png",
      imagePathTitle: "assets/images/7karve.png",
      title: "Get food delivery to your doorstep asap",
      desc:
          "We have young and professional delivery team that will bring your food as soon as possible to your doorstep",
    ),
    OnbordingData(
      imagePath: "assets/images/sammy-done.png",
      imagePathTitle: "assets/images/7karve.png",
      title: "Buy Any Food from your favorite restaurant",
      desc:
          "We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(backgroundColor: Colors.white),
          preferredSize: Size.fromHeight(0)),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: IntroScreen(list,
                    MaterialPageRoute(builder: (context) => LoginScreen())),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: My_Button(
                  text: 'Get Started',
                  color: Color(0xFF50afab),
                  fun: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  colorText: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Spacer(),
                    Text("Don't have an account ?"),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  RegisterScreen()),
                        );
                      },
                      child: Text('Sign Up'),
                    ),
                    Spacer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
