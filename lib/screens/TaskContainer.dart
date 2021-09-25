import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_todoapp/constants.dart';

class TaskContainer extends StatelessWidget {
  final title;
  final subtitle;
  Function onDelete;
  TaskContainer({this.title, this.subtitle, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
      child: Container(
        color: primaryColor,
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
                      color: secondaryColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 1,
                  child: GestureDetector(
                    onTap: onDelete,
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
