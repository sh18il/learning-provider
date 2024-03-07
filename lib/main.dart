// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider(
// //       create: (context) => TodoList(),
// //       child: MaterialApp(
// //         home: TodoListScreen(),
// //       ),
// //     );
// //   }
// // }

// // class Todo {
// //   String title;
// //   bool isCompleted;

// //   Todo({required this.title, this.isCompleted = false});
// // }

// // class TodoList extends ChangeNotifier {
// //   List<Todo> _todos = [];

// //   List<Todo> get todos => _todos;

// //   void addTodo(String title) {
// //     _todos.add(Todo(title: title));
// //     notifyListeners();
// //   }

// //   void toggleTodoState(int index) {
// //     _todos[index].isCompleted = !_todos[index].isCompleted;
// //     notifyListeners();
// //   }
// // }

// // class TodoListScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final todoList = Provider.of<TodoList>(context);

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Todo List'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: todoList.todos.length,
// //         itemBuilder: (context, index) {
// //           final todo = todoList.todos[index];
// //           return ListTile(
// //             title: Text(todo.title),
// //             leading: Checkbox(
// //               value: todo.isCompleted,
// //               onChanged: (_) => todoList.toggleTodoState(index),
// //             ),
// //           );
// //         },
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: () {
// //           showDialog(
// //             context: context,
// //             builder: (context) {
// //               String newTodoTitle = '';
// //               return AlertDialog(
// //                 title: Text('Add Todo'),
// //                 content: TextField(
// //                   onChanged: (value) => newTodoTitle = value,
// //                   decoration: InputDecoration(
// //                     hintText: 'Enter todo title',
// //                   ),
// //                 ),
// //                 actions: <Widget>[
// //                   TextButton(
// //                     onPressed: () {
// //                       if (newTodoTitle.isNotEmpty) {
// //                         todoList.addTodo(newTodoTitle);
// //                         Navigator.pop(context);
// //                       }
// //                     },
// //                     child: Text('Add'),
// //                   ),
// //                 ],
// //               );
// //             },
// //           );
// //         },
// //         child: Icon(Icons.add),
// //       ),
// //     );
// //   }
// // }

// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_provider/getx.dart';
import 'package:learning_provider/main2.dart';
import 'package:provider/provider.dart';

import 'provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: HomeScreen(),
      
    );
  }
}

// class Counter extends ChangeNotifier {
//   int count = 0;
//   List<Color> colort = [
//     Colors.black,
//     Colors.red,
//     Colors.green,
//     Colors.blue,
//     Colors.yellow
//   ];

//   void increment() {
//     count++;

//     notifyListeners();
//   }
// }

// class CounterScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     log('message');
//     final counter = Provider.of<Counter>(context, listen: false);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Consumer<Counter>(builder: (context, pro, _) {
//               return Text(
//                 'Count: ${pro.count}',
//                 style: TextStyle(fontSize: 24),
//               );
//             }),
//             SizedBox(height: 20),
//             Consumer<Counter>(builder: (context, pro, _) {
//               return Container(
//                   width: 200,
//                   height: 200,
//                   color: pro.colort[pro.count % pro.colort.length]);
//             }),
//             ElevatedButton(
//               onPressed: () => counter.increment(),
//               child: Text('Increment'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
