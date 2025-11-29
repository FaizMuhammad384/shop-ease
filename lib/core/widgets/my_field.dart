import 'package:flutter/material.dart';


class MyField extends StatelessWidget {

  final TextEditingController? controller;
  final  String? Function(String?)? validator;
  final String? labelText;



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.black.withAlpha(25),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.black.withAlpha(25),
          ),
        ),
      ),
    );
  }

  const MyField({
    super.key,
    this.controller,
    this.validator,
    this.labelText,
  });
}
