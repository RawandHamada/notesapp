
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsetsDirectional.only(top: 3),

            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'settings_screen');
              },
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            margin: EdgeInsetsDirectional.only(top: 5),
            child: Text(
              'About App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff474559),
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Image(
              image: AssetImage('images/background.png'),
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Center(
              
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,

                  border: Border.all(color: Color(0xff6A90F2),width: 5),
                  borderRadius: BorderRadius.circular(10)
                ),


                width: 250,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('images/launch_icon.png')),
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
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Flutter  - Notes App V1.0',
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
