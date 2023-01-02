import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final IconData? prefixIcon;
  final TextInputType textInputType;
  const TextFieldInput({Key? key, required this.textEditingController,  this.isPass = false,
    required this.hintText, required this.textInputType, required int maxLength, this.prefixIcon, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderSide: Divider.createBorderSide(context)
    );

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: inputBorder,
          enabledBorder: inputBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(21.0)
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
