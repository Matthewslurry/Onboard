import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen/page/home_page.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'SignIn',
              body: 'Sign-In to have access to your dashboard',
              image: buildImage('assets/students.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'SignUp',
              body: 'Sign-up if its your first time using this application',
              image: buildImage('assets/studying.jpg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
                title: 'Dashboard',
                body: 'Have access to all features in the dashboard',
                image: buildImage('assets/dashboard.png'),
                decoration: getPageDecoration(),

                // ignore: deprecated_member_use
                footer: RaisedButton(
                  onPressed: () => gotoHome(context),
                  child: Text('Get Startd',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  color: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  shape: StadiumBorder(),
                )),
          ],
          done: Text(
            'Finish',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onDone: () => gotoHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          // onSkip: () => gotoHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          //animationDuration: 2000,
        ),
      );
  void gotoHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );
  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
      size: Size(10, 10),
      activeColor: Colors.blueAccent,
      activeSize: Size(22, 10),
      activeShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.blue[700]),
        bodyTextStyle: TextStyle(fontSize: 20, color: Colors.grey),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
