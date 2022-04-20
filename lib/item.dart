import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  const Item({Key? key}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: ((context, index) {
          final Color color =
              Colors.primaries[(index + 1) % Colors.primaries.length];
          return _buildRow(index, color);
        }));
  }

  Widget _buildRow(int index, Color color) {
    final String word = index.toString() + '. 點擊數量';

    return ListTile(
      title: Text(word),
      tileColor: color,
    );
  }
}
