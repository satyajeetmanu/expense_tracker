import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter course',
        amount: 100.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Movie',
        amount: 250.19,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _addExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const Text("DISPLAYING MODAL OVERLAY"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense tracker'),
        actions: [
          IconButton(
            onPressed: _addExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}
