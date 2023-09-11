import 'package:biopro/components/custom_textformfield.dart';
import 'package:biopro/constants.dart';
import 'package:flutter/material.dart';

class InputView extends StatelessWidget {
  InputView(
      {super.key,
      this.fullNameController,
      this.slackNameController,
      this.gitHubNameController,
      this.personalBioController});

  TextEditingController? fullNameController = TextEditingController();
  TextEditingController? slackNameController = TextEditingController();
  TextEditingController? gitHubNameController = TextEditingController();
  TextEditingController? personalBioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      body: Padding(
        padding:
            EdgeInsets.only(left: 15.0, right: 10.0, bottom: 10.0, top: 40.0),
        child: ListView(
          children: [
            Text(
              'Tap on a field to edit',
              style: kTitle,
            ),
            SizedBox(height: 20.0),
            CustomTextFormField(
              fieldLabel: 'Full Name',
              textEditingController: fullNameController,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              fieldLabel: 'Slack Name',
              textEditingController: slackNameController,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              fieldLabel: 'GitHub Profile',
              textEditingController: gitHubNameController,
            ),
            SizedBox(
              height: 10.0,
            ),
            CustomTextFormField(
              fieldLabel: 'Personal Bio',
              textEditingController: personalBioController,
            ),
            SizedBox(
              height: 10.0,
            ),
            MaterialButton(
              onPressed: () {
                if (fullNameController!.text.isNotEmpty &&
                    slackNameController!.text.isNotEmpty &&
                    gitHubNameController!.text.isNotEmpty &&
                    personalBioController!.text.isNotEmpty) {
                  Navigator.pop(context);
                } else {
                  showDialog(
                    context: context,
                    builder: (context) {},
                    child: AlertDialog(
                      title: Text(
                        'Please fill all details correctly',
                        style: kTitle,
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'))
                      ],
                    ),
                  );
                }
              },
              color: Colors.indigo,
              child: Text(
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
