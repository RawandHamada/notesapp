
import 'package:flutter/material.dart';
class category_widget extends StatefulWidget {
  const category_widget({
    Key? key,
  }) : super(key: key);

  @override
  _category_widgetState createState() => _category_widgetState();
}

class _category_widgetState extends State<category_widget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      clipBehavior: Clip.antiAlias,
      children: [
        SizedBox(height: 10,),

        Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius:
            BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black
                      .withOpacity(0.16),
                  blurRadius: 6,
                  offset: Offset(0, 3),
                  spreadRadius: 3)
            ],
          ),
          height: 80,
          width: 340,
          child: ListTile(
            onTap: (){
              Navigator.pushReplacementNamed(
                  context, 'category_name_screen');
            },
            leading: Container(
              width: 70,
              height: 70,
              child: Container(
                margin:
                EdgeInsetsDirectional.only(
                    top: 10, bottom: 0),
                alignment: AlignmentDirectional
                    .bottomCenter,
                child: Container(
                  width: 70,
                  height: 70,
                  margin:
                  EdgeInsetsDirectional.only(
                      bottom: 10),
                  child: Container(
                    margin: EdgeInsetsDirectional
                        .only(top: 0),
                    width: 50,
                    child: CircleAvatar(
                      backgroundColor:
                      Color(0xFF6A90F2),
                      child: Text(
                        'W',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            title: Text('Work'),
            subtitle: Text('Notes for work...'),
            trailing: SizedBox(
              width: 60,
              child: Container(
                padding:
                EdgeInsetsDirectional.only(
                    start: 0),
                margin:
                EdgeInsetsDirectional.only(
                    start: 0),
                child: IconButton(
            icon: Icon(
              Icons.delete,
              size: 20,
              color: Color(0xffD84040),
            ),
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Removed'),
                        backgroundColor: Colors.red ,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        Container(
          child: Padding(
            padding:
            const EdgeInsetsDirectional.only(
                bottom: 0,
                end: 0.02,
                start: 0.02),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                color: Color(0xFF6A90F2),
              ),
              height: 79,
              width: 25,
              child: Container(
                width: 80,
                height: 50,
                margin: EdgeInsets.only(right: 10),
                child: IconButton(
                  onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Edit'),
                          backgroundColor: Colors.blue ,
                        ),
                    );
                  },
                  icon:  Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }

}
