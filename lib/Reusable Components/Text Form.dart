import 'package:flutter/material.dart';

class MyTextForm extends StatefulWidget {
  MyTextForm(
      {Key? key,
      required this.title,
      required this.hint,
      required this.textType,
      required this.controller,
      })
      : super(key: key);
  final String title;
  final String hint;
  final TextInputType textType;
  final TextEditingController controller;

  @override
  State<MyTextForm> createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
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
          controller: widget.controller,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: widget.title,
          ),
          keyboardType: widget.textType,
        )
      ],
    );
  }
}
