import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<dynamic> _todos = [];

  @override
  void initState() {
    super.initState();
    _fetchTodoData();
  }

  Future<void> _fetchTodoData() async {
    final Uri url = Uri.parse('https://jsonplaceholder.typicode.com/todos');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        _todos = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load todos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
      ),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(_todos[index]['title']),
            leading: Text(_todos[index]['id'].toString()),
            subtitle: Text(_todos[index]['completed'].toString()),
          );
        },
      ),
    );
  }
}