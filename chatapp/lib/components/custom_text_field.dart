import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.suffixIcon,
      this.onChanged, required this.obsecureText});
  final String hintText;
  final String labelText;
  final Widget suffixIcon;
  final Function(String)? onChanged;
  final bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
        obscureText: obsecureText,
        // ignore: body_might_complete_normally_nullable
        validator: (data) {
          if (data!.isEmpty) {
            return 'Required Value';
          }
        },
        onChanged: onChanged,
        decoration: InputDecoration(
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          suffixIcon: suffixIcon,
          suffixIconColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Ubuntu',
          ),
          hintStyle:
              TextStyle(color: Colors.grey, fontFamily: 'Ubuntu', fontSize: 16),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.yellow,
            ),
          ),
        ),
      ),
    );
  }
}
