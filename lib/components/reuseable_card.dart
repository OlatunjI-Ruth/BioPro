import 'package:biopro/input_view.dart';
import 'package:flutter/material.dart';
import 'package:biopro/constants.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => InputView()));
      },
      child: Card(
        color: Colors.grey[900],
        margin: EdgeInsets.zero,
        child: ListTile(
          title: Text(
            title!,
            style: kTitle,
          ),
        ),
      ),
    );
  }
}
