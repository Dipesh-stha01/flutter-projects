import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/cubit/todo_cubit.dart';

class AddTodoPage extends StatelessWidget {
  const AddTodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: todoController,
              decoration: const InputDecoration(
                hintText: "Title",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // BlocProvider.of<TodoCubit>(context)
                //     .addTodo(todoController.text.trim());
                context.read<TodoCubit>().addTodo(todoController.text.trim());
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
