part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent {}

class TodoE extends TodoEvent{
  final String name;
  final String dateTime;

  TodoE({required this.name, required this.dateTime});
}