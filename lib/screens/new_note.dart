import 'package:flutter/material.dart';

class NewNote extends StatefulWidget {
  const NewNote({Key? key}) : super(key: key);

  @override
  _NewNewNoteState createState() => _NewNewNoteState();
}

class _NewNewNoteState extends State<NewNote> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          leading: Container(
            margin: EdgeInsetsDirectional.only(top: 3),
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'category_name_screen');
              },
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsetsDirectional.only(top: 70),
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
                                'New Note',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF23203F),
                                ),
                              ),
                              SizedBox(height: 5,),

                              Text(
                                'Create Note',
                                style: TextStyle(
                                    color: Color(0xFF716F87),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(height: 5,),

                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    start: 25,
                                    end: 15,
                                    top: 25,
                                    bottom: 20),
                                child: TextField(
                                  keyboardType:
                                  TextInputType.text,
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
                                    hintText: 'Note Name',
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
                                    start: 25,
                                    end: 15,
                                    top: 0,
                                    bottom: 35),
                                child: TextField(
                                  keyboardType:
                                  TextInputType.text,
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
                                    hintText: 'Short Description',
                                    hintStyle: TextStyle(
                                      color: Color(0xff9391A4),
                                    ),
                                    focusColor: Color(0xff9A9A9A),
                                  ),
                                  cursorColor: Colors.black,
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 30, end: 30),
                                  child: Container(
                                    margin:
                                    EdgeInsetsDirectional.only(top: 0),
                                    width: double.infinity,
                                    height: 53,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, 'category_name_screen');
                                      },
                                      child: Text(
                                        'Save',
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
                        ),
                      ],
                    ),
                  ])),
            ),
          ),
        ),
      ),
    );
  }
}
