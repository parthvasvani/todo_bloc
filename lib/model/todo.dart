class Todo{
  final String name;
  final DateTime dateTime;

  Todo({required this.name, required this.dateTime});

  @override
  String toString(){
    return "Todo(name: $name, dateTime: $dateTime)";
  }
}