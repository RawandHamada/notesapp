import 'package:flutter/material.dart';
import 'package:notesapp/widget/category_widget.dart';

class CategorieScreen extends StatefulWidget {
  const CategorieScreen({Key? key}) : super(key: key);

  @override
  _CategorieScreenState createState() => _CategorieScreenState();
}

class _CategorieScreenState extends State<CategorieScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            Container(
              margin: EdgeInsetsDirectional.only(top: 15),
              child: IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, 'settings_screen');
                },
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            margin: EdgeInsetsDirectional.only(top: 5),
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 20),
              child: Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xff474559),
                ),
              ),
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsetsDirectional.only(top: 25),
          child: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 0, top: 10, end: 0, bottom: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              category_widget(),
                              SizedBox(
                                height: 10,
                              ),
                              category_widget(),
                              SizedBox(height: 10),
                              category_widget(),
                              SizedBox(height: 10),
                              category_widget(),
                              SizedBox(
                                height: 10,
                              ),
                              category_widget(),
                              SizedBox(
                                height: 10,
                              ),
                              category_widget(),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ]),
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, 'new_category_screen');
          },
          tooltip: 'Increment',
          child: Icon(
            Icons.add,
            size: 31,
          ),
          backgroundColor: Color(0xff6A90F2),
        ),
      ),
    );
  }
}

/*                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.only(
                                                  bottom: 0,
                                                  end: 0.02,
                                                  start: 0.02),
                                          child: Container(
                                            clipBehavior: Clip.antiAlias,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Color(0xFF6A90F2),
                                            ),
                                            height: 79,
                                            width: 22,
                                          ),
                                        ),
*/
