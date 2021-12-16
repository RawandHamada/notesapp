import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Navigator.pushReplacementNamed(context, 'settings_screen');
            },
          ),
          iconTheme: IconThemeData(color: Colors.black),
          title: Container(
            margin: EdgeInsetsDirectional.only(top: 5),
            child: Container(
              margin: EdgeInsetsDirectional.only(top: 20),
              child: Text(
                'Profile',
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 25, end: 25),
                child: Container(
                  margin: EdgeInsetsDirectional.only(top: 32),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          blurRadius: 6,
                          offset: Offset(0, 3),
                          spreadRadius: 3)
                    ],
                  ),
                  height: 70,
                  width: 330,
                  child: ListTile(
                    leading: Container(
                      width: 65,
                      height: 80,
                      child: Container(
                        margin: EdgeInsetsDirectional.only(top: 2),
                        alignment: AlignmentDirectional.bottomCenter,
                        child: Container(
                          width: 55,
                          height: 55,
                          margin: EdgeInsetsDirectional.only(bottom: 10),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFF6A90F2),
                            child: Text(
                              'F',
                              style: TextStyle(fontSize: 24, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    title: Container(child: Text('Fakhry Al-Naffar')),
                    subtitle: Container(
                        margin: EdgeInsetsDirectional.only(bottom: 5),
                        child: Text('fakhry.h.alnaffar@gamil.com')),

                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: 25,),

                  Container(
                    child: Container(
                      width: 85,
              height: 59,
              decoration: BoxDecoration(
                  color: Colors.white,

                  border: Border.all(color: Color(0xff6A90F2),width: 2),
                  borderRadius: BorderRadius.circular(5),),
                      child: Column(
crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Categories',
                            style: TextStyle(
                              color: Color(0xff6A90F2),
                                fontSize: 12

                            ),
                            textAlign: TextAlign.center
                            ,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('15',
                              textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xffA5A5A5)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
SizedBox(width: 40,),
//222
                  Container(
                    child: Container(
                      width: 85,
                      height: 59,
                      decoration: BoxDecoration(
                        color: Colors.white,

                        border: Border.all(color: Color(0xff6A90F2),width: 2),
                        borderRadius: BorderRadius.circular(5),),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Done Notes',
                            style: TextStyle(
                                color: Color(0xff6A90F2),
                                fontSize: 12

                            ),
                            textAlign: TextAlign.center
                            ,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('14',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xffA5A5A5),
                                fontSize: 12

                            ),
                          ),
                        ],
                      ),
                    ),
                  ),


                  SizedBox(width: 40,),




                  //3333
                  Container(
                    child: Container(
                      width: 85,
                      height: 59,
                      decoration: BoxDecoration(
                        color: Colors.white,

                        border: Border.all(color: Color(0xff6A90F2),width: 2),
                        borderRadius: BorderRadius.circular(5),),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Text('Waiting Notes',
                            style: TextStyle(
                                color: Color(0xff6A90F2),
                              fontSize: 12
                            ),
                            textAlign: TextAlign.center
                            ,),
                          SizedBox(
                            height: 5,
                          ),
                          Text('13',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xffA5A5A5)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 25,height: 10,),

    ]),
              Padding(
                padding: const EdgeInsets.only(right: 25,left: 25,top: 30,bottom: 15),
                child: Container(
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
              ),
              Column(
                children: [
                  SizedBox(
                    height: 0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 25, end: 25),
                          child: Container(
                            margin:
                            EdgeInsetsDirectional.only(top: 0),
                            width: double.infinity,
                            height: 53,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, 'settings_screen');
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
                                          15))),
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
    );


//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   child: Container(
//                     width: 85,
//             height: 59,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//
//                 border: Border.all(color: Color(0xff6A90F2),width: 2),
//                 borderRadius: BorderRadius.circular(10),),
//                     child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//
//                         Text('Categories',
//                           style: TextStyle(
//                             color: Color(0xff6A90F2)
//                           ),
//                           textAlign: TextAlign.center
//                           ,),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text('15',
//                             textAlign: TextAlign.center,
//                           style: TextStyle(
//                               color: Color(0xffA5A5A5)
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),


  }
}
