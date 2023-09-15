import 'package:flutter/material.dart';
import 'package:biopro/constants/text_constant.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      margin: EdgeInsets.zero,
      child: ListTile(
          title: Text(
        title!,
        style: kTitle,
      )),
    );
  }
}
