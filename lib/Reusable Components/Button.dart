import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class My_Button extends StatelessWidget {
  const My_Button({Key? key, required this.text, required this.color, required this.fun, required this.colorText}) : super(key: key);
  final String text;
  final Color color;
  final Color colorText;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 52,
        decoration: BoxDecoration(
            color:color, borderRadius: BorderRadius.circular(6)),
        child: MaterialButton(
          child: Text(text,style: TextStyle(color: colorText,fontSize: 18),),
          onPressed: fun,
        ),
      ),
    );
  }
}
