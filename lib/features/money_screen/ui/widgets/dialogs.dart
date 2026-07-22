import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void showAddDialog(
  BuildContext context,
  String title,
  void Function(double) updateValue,
  VoidCallback resetAddState,
) {
  final TextEditingController controller = TextEditingController();
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(title),
        content: TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: '0',
          ),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              resetAddState();
              Navigator.of(context).pop();
            },
            child: const Text('إلغاء'),
          ),
          TextButton(
            onPressed: () {
              final value = double.tryParse(controller.text) ?? 0;
              updateValue(value);
              Navigator.of(context).pop();
            },
            child: const Text('تأكيد'),
          ),
        ],
      );
    },
  );
}

void showEditDialog(
  BuildContext context,
  String title,
  double currentValue,
  void Function(double) updateValue,
  VoidCallback resetAddState,
) {
  final TextEditingController controller =
      TextEditingController(text: currentValue.toStringAsFixed(2));
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('تعديل $title'),
        content: TextField(
          controller: controller,
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          decoration: const InputDecoration(
            hintText: '0.00',
          ),
          inputFormatters: [
            // Only allows digits and one decimal separator
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('إلغاء'),
          ),
          TextButton(
            onPressed: () {
              final value = double.tryParse(controller.text) ?? 0;
              updateValue(value);
              Navigator.of(context).pop();
            },
            child: const Text('تأكيد'),
          ),
        ],
      );
    },
  );
}
