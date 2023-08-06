import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final TextInputType inputType;
  final List<TextInputFormatter>? formatters;

  const MyTextField({
    super.key,
    required this.label,
    required this.inputType,
    this.formatters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: Text(label),
          ),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green,
                ),
              ),
            ),
            keyboardType: inputType,
            inputFormatters: formatters,
          ),
        ],
      ),
    );
  }
}
