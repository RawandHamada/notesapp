import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  _LaunchScreenState createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(context, 'login_screen');
      },
    );
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image(image: AssetImage('images/launch_icon.png')),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    'My Notes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF23203F)),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsets.only(top: 2),
                  child: Text(
                    'For Organized Life',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0XFF707070)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Flutter App - Notes App V1.0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 15,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF707070),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
