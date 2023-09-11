import 'package:flutter/material.dart';
import 'components/hintText.dart';
import 'components/reuseable_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Biopro',
              style: TextStyle(
                color: Colors.white,
              )),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage('images/Ruth.jpg'),
              ),
            ),
          ]),
      body: Padding(
        padding:
            EdgeInsets.only(left: 15.0, right: 10.0, bottom: 10.0, top: 15.0),
        child: ListView(
          children: [
            HintText(
              text: 'Full Name',
            ),
            ReusableCard(
              title: 'Ruth Olatunji',
            ),
            SizedBox(height: 10.0),
            HintText(
              text: 'Slack Name',
            ),
            ReusableCard(title: 'Tech ORB'),
            SizedBox(
              height: 10.0,
            ),
            HintText(
              text: 'GitHub Handle',
            ),
            ReusableCard(
              title: ' ',
            ),
            SizedBox(
              height: 10.0,
            ),
            HintText(
              text: 'Personal Bio',
            ),
            ReusableCard(
              title: '',
            )
          ],
        ),
      ),
    );
  }
}
