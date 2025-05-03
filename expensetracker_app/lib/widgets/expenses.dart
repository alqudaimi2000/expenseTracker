import 'package:flutter/material.dart';
import 'package:expensetracker_app/models/expense.dart';
import 'package:expensetracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:expensetracker_app/widgets/new_expense.dart';
import 'package:expensetracker_app/widgets/chart/chart.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _expenses = [
    Expense(
      title: 'Flutter',
      amount: 10,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'PC',
      amount: 1212,
      date: DateTime.now(),
      category: Category.work,
    ),
  ];

  void _addExpense(Expense expense) {
    setState(() {
      _expenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _expenses.indexOf(expense);
    setState(() {
      _expenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Expense removed successfully!'),
        backgroundColor: Color.fromARGB(255, 18, 150, 18),
        duration: Duration(seconds: 2),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _expenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      builder:
          (ctx) => Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: NewExpense(onAddExpense: _addExpense),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body:
          width < 600
              ? Column(
                children: [
                  Chart(expenses: _expenses),
                  Expanded(
                    child:
                        _expenses.isEmpty
                            ? const Center(child: Text('No expenses found.'))
                            : ExpensesList(
                              expenses: _expenses,
                              onRemoveExpense: _removeExpense,
                            ),
                  ),
                ],
              )
              : Row(
                children: [
                  Expanded(child: Chart(expenses: _expenses)),
                  Expanded(
                    child: ExpensesList(
                      expenses: _expenses,
                      onRemoveExpense: _removeExpense,
                    ),
                  ),
                ],
              ),
    );
  }
}
