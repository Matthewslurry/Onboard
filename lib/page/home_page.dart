import 'package:flutter/material.dart';
import 'package:onboarding_screen/main.dart';
import 'package:onboarding_screen/page/onboarding_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(MyApp.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () => gotoOnBoarding(context),
              child: Text('Go back'),
            ),
          ]),
    );
  }

  void gotoOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnboardingPage()),
      );
}
