// import 'package:expense_tracker/lexpenses_list.dart';
import 'package:expense_tracker/widget/expense_list/expenses_list.dart';
import 'package:expense_tracker/widget/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Courses',
      amount: 399.0,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
        title: 'Food Ordered',
        amount: 210.0,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Leisure',
        amount: 30.30,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Trip',
        amount: 7000.0,
        date: DateTime.now(),
        category: Category.travel),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          //Toolbar with the Add button ==>> Row()
          const Text('Expenses Chart...'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
