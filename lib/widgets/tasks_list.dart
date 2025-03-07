import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: ( context, taskData, Widget? child) {
        return ListView.builder(itemBuilder: ( context,  index) {
          final task = taskData.tasks[index];
          return TaskTile(
            isChecked: task.isDone,//The method '[]' can't be unconditionally invoked because the receiver can be 'null'.
            taskTitle: task.name ,
            checkboxCallback: (bool? checkBoxState) {
              taskData.updateTask(task);
              // setState(() {
              //   widget.tasks[index].toggleDone();
              // });
            },
            longPressCallback: (){
              taskData.deleteTask(task);
            },
          );


        },itemCount: taskData.taskCount,
        );
      },

    );
  }
}

