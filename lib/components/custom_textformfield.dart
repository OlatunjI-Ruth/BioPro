import 'package:biopro/constants/text_constant.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.textEditingController,
    this.fieldLabel,
    this.icon,
    this.enabled,
    this.onChanged,
  });

  final TextEditingController? textEditingController;
  final String? fieldLabel;
  final Widget? icon;
  final bool? enabled;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      cursorColor: Colors.indigo,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      style: kTitle,
      decoration: InputDecoration(
        // hintText: 'Full Name',
        // hintStyle: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        labelText: fieldLabel,
        labelStyle: const TextStyle(
            color: Colors.white24, fontWeight: FontWeight.w500, fontSize: 17.0),
        focusedErrorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                // style: BorderStyle.none,
                color: Colors.indigo,
                width: 2.0)),
        errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                // style: BorderStyle.none,
                color: Colors.indigo,
                width: 2.0)),
        disabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              // style: BorderStyle.none,
              color: Colors.indigo.shade300,
              width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              // style: BorderStyle.none,
              color: Colors.indigo,
              width: 2.0),
        ),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Colors.indigo, width: 2.0)),
        filled: true,
        fillColor: Colors.grey.shade900,
      ),
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      enabled: enabled,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return "Text field can't be empty";
        }
        if (text.length < 6) {
          return "input should be more than 6 characters";
        }
      },
    );
  }
}

class HintText extends StatelessWidget {
  const HintText({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: kTitleBold,
    );
  }
}
