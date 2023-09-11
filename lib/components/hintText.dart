import 'package:flutter/material.dart';
import 'package:biopro/constants.dart';

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
