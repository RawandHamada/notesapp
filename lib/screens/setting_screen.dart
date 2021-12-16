import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  String _language = 'EN';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'category_screen');
            },
          ),
          iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            margin: EdgeInsetsDirectional.only(top: 5),
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 20),
              child: Text(
                'Settings',
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
                              Container(
                                width: 70,
                                height: 70,
                                margin: EdgeInsetsDirectional.only(bottom: 10),
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFF6A90F2),
                                  child: Text(
                                    'F',
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.white),
                                  ),
                                ),
                              ),
                              Text(
                                'Rawand Hamada',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Quicksand',
                                  color: Color(0xFF23203F),
                                ),
                              ),
                              Container(
                                margin: EdgeInsetsDirectional.only(bottom: 15),
                                child: Text(
                                  'rawandham6@gmail.com',
                                  style: TextStyle(
                                      color: Color(0xFF716F87),
                                      fontSize: 15,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 0,
                          thickness: 1,
                          color: Color(0xFFD0D0D0),
                          endIndent: 35,
                          indent: 35,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.centerStart,
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
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
                              height: 80,
                              width: 340,
                              child: ListTile(
                                onTap: () {
                                  showLanguageDialog();

                                  setState(() {
                                    _language;
                                  });
                                },
                                leading: Container(
                                  width: 70,
                                  height: 70,
                                  margin:
                                      EdgeInsetsDirectional.only(bottom: 10),
                                  child: Container(
                                    margin: EdgeInsetsDirectional.only(top: 2),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFF6A90F2),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.language,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text('Language'),
                                subtitle: Text('Selected language: $_language'),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 0, end: 50, start: 0.02),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFF6A90F2),
                                ),
                                height: 79,
                                width: 6,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
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
                              height: 80,
                              width: 340,
                              child: ListTile(
                                onTap: (){
                                  Navigator.pushReplacementNamed(context, 'profile_screen');

                                },
                                leading: Container(
                                  width: 70,
                                  height: 70,
                                  margin:
                                      EdgeInsetsDirectional.only(bottom: 10),
                                  child: Container(
                                    margin: EdgeInsetsDirectional.only(top: 2),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFF6A90F2),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.person_outline_rounded,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text('Profile'),
                                subtitle: Text('Update your data…'),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 0, end: 0.02, start: 0.02),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFF6A90F2),
                                ),
                                height: 79,
                                width: 6,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.centerStart,
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
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
                              height: 80,
                              width: 340,
                              child: ListTile(
                                onTap: (){
                                  Navigator.pushReplacementNamed(context, 'about_screen');

                                },
                                leading: Container(
                                  width: 70,
                                  height: 70,
                                  margin:
                                      EdgeInsetsDirectional.only(bottom: 10),
                                  child: Container(
                                    margin: EdgeInsetsDirectional.only(top: 2),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFF6A90F2),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.perm_device_info,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text('About App'),
                                subtitle: Text('What is notes app?'),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 0, end: 50, start: 0.02),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFF6A90F2),
                                ),
                                height: 79,
                                width: 6,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
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
                              height: 80,
                              width: 340,
                              child: ListTile(
                                leading: Container(
                                  width: 70,
                                  height: 70,
                                  margin:
                                      EdgeInsetsDirectional.only(bottom: 10),
                                  child: Container(
                                    margin: EdgeInsetsDirectional.only(top: 2),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFF6A90F2),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.info,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text('About course'),
                                subtitle: Text('Describe the course in brief'),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 0, end: 0.02, start: 0.02),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFF6A90F2),
                                ),
                                height: 79,
                                width: 6,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Stack(
                          alignment: AlignmentDirectional.centerStart,
                          clipBehavior: Clip.antiAlias,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
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
                              height: 80,
                              width: 340,
                              child: ListTile(
                                onTap: () => showLogoutDialog(),

                                leading: Container(
                                  width: 70,
                                  height: 70,
                                  margin:
                                      EdgeInsetsDirectional.only(bottom: 10),
                                  child: Container(
                                    margin: EdgeInsetsDirectional.only(top: 2),
                                    alignment:
                                        AlignmentDirectional.bottomCenter,
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFF6A90F2),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: Icon(
                                          Icons.power_settings_new_rounded,
                                          color: Colors.white,
                                          size: 25,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                title: Text('Logout'),
                                subtitle: Text('Waiting your return…'),
                                trailing: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(
                                  bottom: 0, end: 50, start: 0.02),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFF6A90F2),
                                ),
                                height: 79,
                                width: 6,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsetsDirectional.only(bottom: 0, top: 58),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Flutter- Notes App V1.0',
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
            ),
          ),
        ),
      ),
    );
  }

  void showLanguageDialog() {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 15,
      context: context,
      builder: (context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile(
                  value: 'AR',
                  title: Text('Arabic'),
                  groupValue: _language,
                  onChanged: (String? value) {
                    setState(() {
                      if (value != null) {
                        _language = value;
                      }
                      Navigator.pop(context);
                    });
                  },
                ),
                RadioListTile(
                  value: 'EN',
                  title: Text('English'),
                  groupValue: _language,
                  onChanged: (String? value) {
                    setState(() {
                      if (value != null) {
                        _language = value;
                      }
                      Navigator.pop(context);
                    });
                  },
                ),
              ],
            ),
          );
        });
      },
    );
  }
  void showLogoutDialog() {
    showDialog(
        barrierColor: Color(0xff6A90F2).withOpacity(0.16),
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Confirm Logout'),
            content: Text('Are You sure!'),
            actions: [
              TextButton(onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context,'login_screen');

              }, child: Text('YES')),
              TextButton(onPressed: () {
                Navigator.pop(context);
              }, child: Text('NO')),
            ],
            // actionsPadding: EdgeInsets.symmetric(horizontal: 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          );
        });
  }

}
