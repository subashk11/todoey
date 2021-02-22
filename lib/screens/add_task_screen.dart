import 'package:flutter/material.dart';
import 'package:todoey_flutter/modals/task_data.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  String typedData;
  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 35.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: textController,
              onChanged: (newValue) {
                typedData = newValue;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              onPressed: () {
                Provider.of<TaskData>(context).addTask(typedData);
                textController.clear();
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
