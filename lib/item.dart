import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final int itemCount;

  const Item({Key? key, required this.itemCount}) : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return _buildSuggestions(widget.itemCount);
  }

  Widget _buildSuggestions(int itemCount) {
    return ListView.builder(
        itemCount: itemCount,
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
