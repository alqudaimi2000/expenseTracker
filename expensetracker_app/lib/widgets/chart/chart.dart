import 'package:flutter/material.dart';
import 'package:expensetracker_app/models/expense.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, required this.expenses});

  final List<Expense> expenses;

  List<ExpenseSummary> get expenseSummaries {
    return Category.values.map((category) {
      return ExpenseSummary.forCategory(category, expenses);
    }).toList();
  }

  double get maxTotalExpense {
    double maxTotal = 0;
    for (final summary in expenseSummaries) {
      if (summary.totalExpenses > maxTotal) {
        maxTotal = summary.totalExpenses;
      }
    }
    return maxTotal;
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary.withAlpha(77),
            Theme.of(context).colorScheme.primary.withAlpha(0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final summary in expenseSummaries)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: FractionallySizedBox(
                        heightFactor:
                            summary.totalExpenses == 0
                                ? 0
                                : summary.totalExpenses / maxTotalExpense,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(8),
                            ),
                            color:
                                isDarkMode
                                    ? Theme.of(context).colorScheme.secondary
                                    : Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (final summary in expenseSummaries)
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Icon(
                      _getIconForCategory(summary.category),
                      size: 16,
                      color:
                          isDarkMode
                              ? Theme.of(context).colorScheme.secondary
                              : Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  IconData _getIconForCategory(Category category) {
    switch (category) {
      case Category.food:
        return Icons.lunch_dining;
      case Category.travel:
        return Icons.flight_takeoff;
      case Category.leisure:
        return Icons.movie;
      case Category.work:
        return Icons.work;
      default:
        return Icons.money;
    }
  }
}
