import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = '';

    return Container(
       color: const Color(0xFF757575),
      child: Container(

        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          )
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent
            ),
            ),
             TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText){

                newTaskTitle = newText;
              },
            ),
            TextButton(
               child: const Text(
                 'Add',
                 style: TextStyle(color: Colors.black54),),

              onPressed: (){
                  // add our tasks to the list

                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle );
                  Navigator.pop(context);

              },
            )
          ],
        ),
      ),

    );
  }
}
