import 'package:flutter/material.dart';
import 'package:todotute/util/my_button.dart';

class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({super.key, 
  required this.controller, 
  required this.onCancel,
  required this.onSave,});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
         //get user input
          TextField(
            controller: controller,
            decoration: const InputDecoration(border: OutlineInputBorder(),
           hintText: "Add a new task",
            ),
           ),// input decoration
            


         // buttons save+ cancel
         Row(
          mainAxisAlignment: MainAxisAlignment.end,
           children: [
             //save button
             MyButton(text: "save", onPressed: onSave),

             const SizedBox(width: 8),

             //cancel button
             MyButton(text: "cancel", onPressed: onCancel)

            ],
          )
        ]),
      ),
    );
  }
}