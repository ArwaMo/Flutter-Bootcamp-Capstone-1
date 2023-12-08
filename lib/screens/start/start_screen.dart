import 'package:flutter/material.dart';
import 'package:team_hack/extentions/size_extention.dart';
import 'package:team_hack/screens/auth/sign_in_screen.dart';
import 'package:team_hack/screens/auth/sign_up_screen.dart';
import 'package:team_hack/screens/hackathon_detail_screen/widgets/primary_button.dart';
import 'package:team_hack/screens/notification_screen/widget/second_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.getHeight(factor: 0.09)),
              Image.asset("assets/images/start_imge.jpg"),
              SizedBox(height: context.getHeight(factor: 0.02)),
              const Row(
                children: [
                  Text(
                    "Welcome To",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  ),
                  Text(
                    " TeamHack",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: Color(0xff007cff)),
                  ),
                ],
              ),
              const Text(
                "Discover community and create team easily",
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: context.getHeight(factor: 0.1)),
              PrimaryButton(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16,
                title: "Login",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
                color: const Color(0xff64a3fa),
                textColor: Colors.white,
              ),
              SizedBox(height: context.getHeight(factor: 0.02)),
              SecondButton(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 16,
                title: "Register",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                borderColor: const Color(0xff64a3fa),
                textColor: const Color(0xff007cff),
              ),
            ],
          ),
        ),
      ),
    );
  }
}








/*
import 'package:flutter/material.dart';
import 'package:team_hack/extentions/size_extention.dart';
import 'package:team_hack/screens/auth/sign_in_screen.dart';
import 'package:team_hack/screens/auth/sign_up_screen.dart';

import 'components/start_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.getHeight(factor: 0.04)),
            const Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text(
                "Welcome To TeamHack",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ),
            const Spacer(),
            Center(
                child: StartButton(
                    content: "Login",
                    onPressedFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()));
                    })),
            SizedBox(height: context.getHeight(factor: 0.02)),
            Center(
                child: StartButton(
                    content: "Register",
                    onPressedFunc: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    })),
            SizedBox(height: context.getHeight(factor: 0.1)),
          ],
        ),
      ),
    );
  }
}
*/