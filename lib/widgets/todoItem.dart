import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: Colors.white,
        leading: Icon(Icons.check_box),
        title: Text(
          "Random text",
          style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              decoration: TextDecoration.lineThrough),
        ),
        trailing: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(50)),
          child: IconButton(
            color: Colors.white,
            iconSize: 20,
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
