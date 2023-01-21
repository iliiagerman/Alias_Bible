import 'package:flutter/material.dart';

class ListCard{
  final String title;
  final Color color;

  ListCard(this.title, this.color);
}

List<ListCard> listCard = [
  ListCard('red', Colors.red),
  ListCard('green', Colors.red),
  ListCard('yellow', Colors.red),
];