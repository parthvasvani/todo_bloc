  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:google_fonts/google_fonts.dart';
  import 'package:intl/intl.dart';
  import 'package:todo_bloc/bloc/todo_bloc.dart';

  final format = DateFormat("dd/MM/yyyy, HH:mm a");


  class TodoPage extends StatelessWidget {
    final todoController = TextEditingController();
    TodoPage({super.key});


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.brown,
        appBar: AppBar(
          title: Text(
            "Todo",
            style: GoogleFonts.notoSerif(
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: todoController,
                decoration: InputDecoration(
                    hintText: "name", filled: true, fillColor: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<TodoBloc>().add(TodoE(
                        name: todoController.text.trim(),
                        dateTime: format.format(DateTime.now())));
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Add Todo",
                    style: GoogleFonts.notoSerifGeorgian(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ))
            ],
          ),
        ),
      );
    }
  }
