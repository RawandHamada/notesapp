import 'package:flutter/material.dart';
class categorieNameWidgetGreen extends StatelessWidget {
  const categorieNameWidgetGreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 10),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Center(
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          bottom: 0, end: 0.02, start: 0.02),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 135,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.16),
                          offset: Offset(0, 0),
                          spreadRadius: 3,
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                      const EdgeInsets.only(left: 20, top: 18),
                      child: ListTile(
                        onTap: () {},
                        title: Text('Note Title'),
                        subtitle: Text(
                            'Lorem Ipsum is simply dummy text of the'
                                '  printing and typesetting industry. Lorem'
                                'Ipsum has been the industry’s standard'
                                '  dummy text ever since the 1500s,'),
                        trailing: Container(
                            margin:
                            EdgeInsets.symmetric(vertical: 30),
                            child: Icon(
                              Icons.check_circle,
                              color: Color(0xff98CE63),
                            )),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(
                          bottom: 0, end: 0.02, start: 0.02),
                      child: Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          color: Color(0xFF6A90F2),
                        ),
                        height: 135,
                        width: 5,
                        child: Container(
                          width: 50,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 352),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        bottomRight: Radius.circular(5),
                      ),
                      color: Color(0xFF6A90F2),
                    ),
                    height: 135,
                    width: 5,
                    child: Container(
                      width: 50,
                      height: 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
