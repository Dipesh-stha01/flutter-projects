import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError("Title cannot be empty.");
      return;
    }
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    /**
   * 'state.add' should anyways not be done because state should only be modifiable through 'emit' function.
   * 
   * Since list is mutable class, we are able to modify the values within it.
   */
    // state.add(todo);
    // emit([...state]);

    emit([...state, todo]);
  }
  //instead of writing print for knowing what change is occuring

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    print("TodoCubit:-  $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print("TodoCubit:-  $error");
  }
}
