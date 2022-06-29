import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

class PhoneForm extends StatelessWidget {
   PhoneForm({Key? key, required this.title, required this.hint, required this.textType, required this.controller}) : super(key: key);
  final String title;
  final String hint;
  final TextInputType textType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: AlignmentDirectional.topStart,
            child:  Text(title)),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: CountryCodePicker(
                onChanged: print,
                initialSelection: 'EG',
                favorite: ['+20', 'EG'],
                showCountryOnly: false,
                showOnlyCountryWhenClosed: false,
                alignLeft: false,
              ),
            ),
            Expanded(
              flex: 3,
              child: TextFormField(
                controller: controller,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: hint,
                ),
                keyboardType: textType,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
