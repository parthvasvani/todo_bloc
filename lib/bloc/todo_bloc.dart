import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, List<TodoE>> {
  TodoBloc() : super([]) {
    on<TodoE>((event, emit) {
      var todoEvent = TodoE(name: event.name, dateTime: event.dateTime);
      emit([...state , todoEvent]);
    });
  }
}
