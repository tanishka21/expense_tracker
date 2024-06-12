import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category { food, leisure, travel, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining_sharp,
  Category.travel: Icons.bus_alert,
  Category.leisure: Icons.movie,
  Category.work: Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // Generated a v1, v2, v3, v4 (time-based) id
  //which assign to the user

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; // leisure Expense(category: 'leisure')

  String get formattedDate {
    return formatter.format(date);
  }
}
