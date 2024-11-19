import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_bloc/bloc/todo_bloc.dart';
import 'package:todo_bloc/pages/todo_page.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text(
          "TodoList",
          style: GoogleFonts.notoSerif(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: BlocBuilder<TodoBloc, List<TodoE>>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.length,
            itemBuilder: (context, index) {
              final todo = state[index];

              return ListTile(
                title: Text(
                  todo.name,
                  style: GoogleFonts.notoSerifGeorgian(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                trailing: Text(
                  todo.dateTime.toString(),
                  style: GoogleFonts.notoSerifGeorgian(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TodoPage(),
              ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
