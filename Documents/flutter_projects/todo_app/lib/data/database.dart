import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List<List<dynamic>> toDoList = []; // Specify the type for better safety

  // Reference the box
  final Box myBox = Hive.box('myBox');

  // Run this method if it is the first time ever opening the app
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do exercise", false],
    ];
    updateDatabase(); // Save the initial data to Hive
  }

  // Load the data from the database
  void loadData() {
    // Retrieve the data from Hive, or return an empty list if it is null
    toDoList = List<List<dynamic>>.from(
      myBox.get("TODOLIST", defaultValue: []),
    );
  }

  // Update the database
  void updateDatabase() {
    myBox.put("TODOLIST", toDoList);
  }
}
