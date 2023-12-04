import 'package:expense_tracker/models/espense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Row(
              children: [
                Text('\$${expense.amount.toString()}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcons[
                          expense.category], //----------------- remove the icon
                    ),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}