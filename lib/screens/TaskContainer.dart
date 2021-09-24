import 'package:flutter/material.dart';

class TaskContainer extends StatelessWidget {
  final title;
  final subtitle;
  TaskContainer({this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
      child: Container(
        color: Color(0xff1E1C1C),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white),
          ),
          subtitle: Text(subtitle,
              style: TextStyle(
                  fontFamily: 'poppins', fontSize: 15, color: Colors.grey)),
          trailing: SizedBox(
            width: 50,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.update,
                      size: 30,
                      color: Color(0xff0ACFA0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
