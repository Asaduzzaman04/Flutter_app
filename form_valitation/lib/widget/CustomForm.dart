import 'package:flutter/material.dart';

class Customform extends StatelessWidget {
  final bool obscureText;
  final String labelTextdata;
  final String hintTextdata;
  final String validHintTextdata;
  final String? Function(String?)? customValidator;
  const Customform({
    super.key,
    this.obscureText = false,
    required this.labelTextdata,
    required this.hintTextdata,
    required this.validHintTextdata,
    this.customValidator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
        
          if (value == null || value.isEmpty) {
            return validHintTextdata;
          }
              if (customValidator != null) {
            return customValidator!(value); // Apply regex or custom logic
          }
          return null;
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelTextdata,
          hintText: hintTextdata,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: const BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
