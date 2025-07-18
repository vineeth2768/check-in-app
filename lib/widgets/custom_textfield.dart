import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.phone,

      style: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
