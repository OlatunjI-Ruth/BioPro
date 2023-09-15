import 'package:biopro/constants/text_constant.dart';
import 'package:biopro/model/user_model.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:biopro/components/custom_textformfield.dart';
import 'input_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

UserInfo? userInfo = UserInfo(
    fullName: 'Ruth Olatunji',
    slackName: 'Tech ORB',
    gitHubHandle: 'OlatunjI-Ruth',
    personalBio:
        "I am a dedicated Flutter developer with a passion for creating stunning,"
        " cross-platform mobile applications."
        " With 7 months of experience"
        " in the world of mobile app development, I'm on a mission to leverage"
        " the power of Flutter and Fireabse to bring innovative ideas to life.");

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Biopro',
              style: TextStyle(
                color: Colors.white,
              )),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                radius: 15.0,
                backgroundImage: AssetImage('images/Ruth.jpg'),
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 10.0, bottom: 10.0, top: 15.0),
        child: ListView(
          children: [
            const HintText(
              text: 'Full Name',
            ),
            ReusableCard(
              title: userInfo!.fullName,
            ),
            const SizedBox(height: 10.0),
            const HintText(text: 'Slack Name'),
            ReusableCard(
              title: userInfo!.slackName,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const HintText(text: 'GitHub Handle'),
            ReusableCard(title: userInfo!.gitHubHandle),
            const SizedBox(
              height: 10.0,
            ),
            const HintText(text: 'Personal Bio'),
            ReusableCard(title: userInfo!.personalBio),
            const SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              onPressed: () async {
                UserInfo? result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputView()));
                setState(() {
                  userInfo = result;
                });
              },
              height: 50.0,
              color: Colors.indigo,
              child: const Text(
                'Edit CV',
                style: kTitle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
