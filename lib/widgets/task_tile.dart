import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{

  bool isChecked ; // Checkbox state
  String taskTitle;
  Function(bool?) checkboxCallback ;
  VoidCallback longPressCallback ;

 TaskTile({super.key, required this.isChecked,required this.taskTitle,required this.checkboxCallback,required this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback, // need to solve
      //  onChanged: toggleCheckbox,
      ),
    );
  }
}



