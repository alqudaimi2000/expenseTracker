import 'package:flutter/material.dart';
import 'package:expensetracker_app/models/expense.dart';
import 'package:expensetracker_app/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300, // Fixed height for the list
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: expenses.length,
        itemBuilder:
            (ctx, index) => Dismissible(
              key: ValueKey(expenses[index].id),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Theme.of(context).colorScheme.error,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.only(right: 20),
                child: const Icon(Icons.delete, color: Colors.white, size: 24),
              ),
              onDismissed: (direction) {
                onRemoveExpense(expenses[index]);
              },
              child: ExpenseItem(expenses[index]),
            ),
      ),
    );
  }
}
