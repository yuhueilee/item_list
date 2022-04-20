import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final int index;
  final Color color;

  const Item({Key? key, required this.index, required this.color})
      : super(key: key);

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  var _pressedIndex = 0;

  void onPressed() {
    setState(() {
      _pressedIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final String word =
        widget.index.toString() + '. 點擊數量' + _pressedIndex.toString();
    return ListTile(
      title: Text(word),
      tileColor: widget.color,
      trailing: ElevatedButton(
        child: const Text('點擊 + 1'),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: Colors.white, onPrimary: Colors.black),
      ),
      contentPadding: const EdgeInsets.all(7),
    );
  }
}
