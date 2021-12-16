import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TapGestureRecognizer _tapGestureRecognizerSignUpScreen;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizerSignUpScreen = TapGestureRecognizer()
      ..onTap = clickTextButtonSignUPScreen;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tapGestureRecognizerSignUpScreen.dispose();
    super.dispose();
  }

  void clickTextButtonSignUPScreen() {
    Navigator.pop(context);
    Navigator.pushNamed(context, 'sign_up_screen');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            SingleChildScrollView(
              // physics: NeverScrollableScrollPhysics(),

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 0, top: 106, end: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF23203F),
                                ),
                              ),
                              Text(
                                'Login to start using app,',
                                style: TextStyle(
                                    color: Color(0xFF716F87),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.16),
                                  blurRadius: 6,
                                  offset: Offset(0, 3),
                                  spreadRadius: 3)
                            ],
                          ),
                          margin: EdgeInsetsDirectional.only(top: 81),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 21, end: 21, top: 32, bottom: 30),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff9A9A9A),
                                      ),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff9A9A9A),
                                      ),
                                    ),
                                    hintText: 'User Name',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9391A4),
                                    ),
                                    focusColor: Color(0xff9A9A9A),
                                  ),
                                  cursorColor: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 21, end: 21, top: 1, bottom: 33),
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9391A4),
                                    ),
                                    focusColor: Color(0xff9A9A9A),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff9A9A9A),
                                      ),
                                    ),
                                  ),
                                  cursorColor: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 8, end: 8),
                                child: Container(
                                  margin: EdgeInsetsDirectional.only(top: 0),
                                  width: double.infinity,
                                  height: 53,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.pushReplacementNamed(
                                          context, 'category_screen');
                                    },
                                    child: Text(
                                      'LOGIN',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xff6A90F2),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(26))),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: EdgeInsetsDirectional.only(top: 0),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                text: 'Don\'t Have an Account ? ',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Color(0xff9391A4),
                                    fontWeight: FontWeight.w300),
                                children: [
                                  TextSpan(
                                    text: 'Sign up ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff23203F),
                                    ),
                                    recognizer:
                                        _tapGestureRecognizerSignUpScreen,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
