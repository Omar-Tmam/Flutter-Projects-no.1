import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.contentPadding,
    this.onSaved,
    this.onChanged,
    this.initialValue,
  });
  final String hintText;
  final EdgeInsets contentPadding;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
        initialValue: initialValue,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'This field is required';
          } else {
            return null;
          }
        },
        cursorColor: Colors.cyan,
        decoration: InputDecoration(
          border: buildBorder(color: Colors.white),
          hintText: hintText,
          focusedBorder: buildBorder(),
          contentPadding: contentPadding,
          hintStyle: TextStyle(fontFamily: 'Ubuntu', fontSize: 16),
          enabledBorder: buildBorder(color: Colors.white),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.cyan,
      ),
    );
  }
}
