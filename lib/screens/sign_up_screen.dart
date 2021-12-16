import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'login_screen');
            },
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          child: Stack(
            children: [
              Image(
                image: AssetImage('images/background.png'),
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                margin: EdgeInsetsDirectional.only(top: 80),
                child: SingleChildScrollView(
                  // physics: NeverScrollableScrollPhysics(),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 0, top: 10, end: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sign Up',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF23203F),
                                      ),
                                    ),
                                    Text(
                                      'Create an account',
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
                                margin: EdgeInsetsDirectional.only(top: 56),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    //هنا ال input
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 15,
                                          end: 15,
                                          top: 30,
                                          bottom: 15),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                          hintText: 'First Name',
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
                                          start: 15,
                                          end: 15,
                                          top: 0,
                                          bottom: 18),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          hintText: 'Last Name',
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 15,
                                          end: 15,
                                          top: 0,
                                          bottom: 18),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          hintText: 'Email',
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 15,
                                          end: 15,
                                          top: 0,
                                          bottom: 18),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: InputDecoration(
                                          hintText: 'Phone',
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
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          start: 15,
                                          end: 15,
                                          top: 0,
                                          bottom: 33),
                                      child: TextField(
                                        keyboardType:
                                            TextInputType.emailAddress,
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
                                        margin:
                                            EdgeInsetsDirectional.only(top: 0),
                                        width: double.infinity,
                                        height: 53,
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pushReplacementNamed(
                                                context, 'login_screen');
                                          },
                                          child: Text(
                                            'Sign Up',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xff6A90F2),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          26))),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
