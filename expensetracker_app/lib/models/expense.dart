import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return DateFormat('MM/dd/yyyy HH:mm').format(date);
  }
}

class ExpenseSummary {
  ExpenseSummary({required this.category, required this.expenses});

  ExpenseSummary.forCategory(this.category, List<Expense> allExpenses)
    : expenses =
          allExpenses.where((expense) => expense.category == category).toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double total = 0;
    for (var expense in expenses) {
      total += expense.amount;
    }
    return total;
  }
}
