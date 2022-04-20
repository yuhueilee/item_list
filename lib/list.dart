import 'package:flutter/material.dart';
import 'package:item_list/item.dart';

class List extends StatefulWidget {
  final int itemCount;

  const List({Key? key, required this.itemCount}) : super(key: key);

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
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
          return Item(index: index, color: color);
        }));
  }
}
