import 'package:biopro/components/custom_textformfield.dart';
import 'package:biopro/constants/text_constant.dart';
import 'package:biopro/model/user_model.dart';
import 'package:flutter/material.dart';

class InputView extends StatelessWidget {
  InputView({
    super.key,
  });

  final TextEditingController? fullNameController = TextEditingController();
  final TextEditingController? slackNameController = TextEditingController();
  final TextEditingController? gitHubNameController = TextEditingController();
  final TextEditingController? personalBioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding: const EdgeInsets.only(
            left: 15.0, right: 10.0, bottom: 10.0, top: 40.0),
        child: ListView(
          children: [
            const Text(
              'Tap on a field to edit',
              style: kTitle,
            ),
            const SizedBox(height: 20.0),
            CustomTextFormField(
              fieldLabel: 'Full Name',
              textEditingController: fullNameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              fieldLabel: 'Slack Name',
              textEditingController: slackNameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              fieldLabel: 'GitHub Profile',
              textEditingController: gitHubNameController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              fieldLabel: 'Personal Bio',
              textEditingController: personalBioController,
            ),
            const SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              onPressed: () {
                if (fullNameController!.text.length >= 6 &&
                    slackNameController!.text.length >= 6 &&
                    gitHubNameController!.text.length >= 6 &&
                    personalBioController!.text.length >= 6) {
                  Navigator.pop(
                      context,
                      UserInfo(
                          fullName: fullNameController!.text,
                          slackName: slackNameController!.text,
                          gitHubName: gitHubNameController!.text,
                          personalBio: personalBioController!.text));
                } else {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.grey[900],
                          title: const Text(
                            'Error',
                            style: kTitleBold,
                          ),
                          content: const Text(
                            'Please fill the input fields properly',
                            style: kTitle,
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'OK',
                                  style: kTitleBold,
                                ))
                          ],
                        );
                      });
                }
              },
              height: 50.0,
              color: Colors.indigo,
              child: const Text(
                'Done',
                style: kTitleBold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
