import 'package:flutter/material.dart';


class PasswordField extends StatefulWidget {
   PasswordField({required this.title, required this.hint, required this.textType, required this.controller});

  final String title;
  final String hint;
  final TextInputType textType;
  bool isPasswordField = false;
   final TextEditingController controller;

   @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Align(
            alignment: AlignmentDirectional.topStart,
            child:  Text(widget.title)),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: widget.isPasswordField,
          controller: widget.controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: widget.hint,
            focusedBorder: OutlineInputBorder(),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  widget.isPasswordField = !widget.isPasswordField;
                });
              },
              child: Icon(
                widget.isPasswordField ? Icons.visibility : Icons.visibility_off,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}