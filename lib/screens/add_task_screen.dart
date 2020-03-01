import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function(String) onAdded;

  AddTaskScreen({this.onAdded});

  @override
  Widget build(BuildContext context) {
    String taskTitle;

    const borderDecoration = UnderlineInputBorder(
      borderSide: BorderSide(
        width: 6,
        color: Colors.lightBlueAccent,
      ),
    );

    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text('Add task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent
                ),
              ),
              TextField(
                onChanged: (value) {
                  taskTitle = value;
                },
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: borderDecoration,
                  enabledBorder: borderDecoration,
                  focusedBorder: borderDecoration,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                child: Text('Add',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),
                ),
                padding: EdgeInsets.all(20),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  onAdded(taskTitle);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}