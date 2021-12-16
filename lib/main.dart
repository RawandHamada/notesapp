import 'package:flutter/material.dart';
import 'package:notesapp/screens/about_screen.dart';
import 'package:notesapp/screens/categorie_screen.dart';
import 'package:notesapp/screens/categories_name.dart';
import 'package:notesapp/screens/launch_screen.dart';
import 'package:notesapp/screens/login_screen.dart';
import 'package:notesapp/screens/new_category.dart';
import 'package:notesapp/screens/new_note.dart';
import 'package:notesapp/screens/profile_screen.dart';
import 'package:notesapp/screens/setting_screen.dart';
import 'package:notesapp/screens/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:'launch_screen',
      routes: {
        'launch_screen':(context)=>LaunchScreen(),
        'login_screen':(context)=>LoginScreen(),
        'sign_up_screen':(context)=>SignUpScreen(),
        'about_screen':(context)=>AboutScreen(),
        'new_note_screen':(context)=>NewNote(),
        'new_category_screen':(context)=>NewCategory(),
        'category_screen':(context)=>CategorieScreen(),
        'category_name_screen':(context)=>CategoriesName(),
        'profile_screen':(context)=>ProfileScreen(),
        'settings_screen':(context)=>SettingScreen(),

      },
    );
  }
}
