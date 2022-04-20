import 'package:flutter/material.dart';
import 'package:item_list/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '面試題目',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text('面試題目'),
        ),
        body: const Item(
          itemCount: 10,
        ),
      ),
    );
  }
}
