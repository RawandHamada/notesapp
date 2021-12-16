import 'package:flutter/material.dart';
import 'package:notesapp/widget/categorie_widget_gray.dart';
import 'package:notesapp/widget/categorie_widget_green.dart';

class CategoriesName extends StatefulWidget {
  const CategoriesName({Key? key}) : super(key: key);

  @override
  _CategoriesNameState createState() => _CategoriesNameState();
}

class _CategoriesNameState extends State<CategoriesName> {
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
              icon: Icon(Icons.add_circle),
              onPressed: () {
                Navigator.pushReplacementNamed(context, 'new_note_screen');
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
              'Category Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xff474559),
              ),
            ),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pushReplacementNamed(context, 'category_screen');
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ListView.separated(
            //   physics: NeverScrollableScrollPhysics(),
            //   shrinkWrap: true,
            //   itemBuilder: (context, index){
            //     return
            //   },
            //   separatorBuilder: (context, index) => SizedBox(
            //     height: 0,
            //   ),
            //   itemCount: 2,
            // ),
            Column(
              children: [
                SizedBox(height: 20,),

                categorieNameWidgetGray(),
                categorieNameWidgetGreen(),
                categorieNameWidgetGray(),
                categorieNameWidgetGreen(),
                categorieNameWidgetGray(),
                SizedBox(height: 30,)
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

