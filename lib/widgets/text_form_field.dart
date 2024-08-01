import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key,
    required this.controller,
    this.inputType = TextInputType.text,
    required this.hintText,
  });

  final TextEditingController controller;

  final TextInputType? inputType;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black,
        )),
      ),
      controller: controller,
      keyboardType: inputType,
    );
  }
}
