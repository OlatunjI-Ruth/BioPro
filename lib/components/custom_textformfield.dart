import 'package:biopro/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
        labelStyle: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17.0),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                // style: BorderStyle.none,
                color: Colors.indigo,
                width: 2.0)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                // style: BorderStyle.none,
                color: Colors.indigo,
                width: 2.0)),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              // style: BorderStyle.none,
              color: Colors.indigo.shade300,
              width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              // style: BorderStyle.none,
              color: Colors.indigo,
              width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
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
          return "Text field can\'t be empty";
        }
        if (text.length < 4) {
          return "please enter a valid response";
        }
      },
    );
  }
}
