import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class Feedback extends StatefulWidget {
  const Feedback({super.key});

  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController =
      TextEditingController(text: 'cedelen@protonmail.com');

  final _subjectController =
      TextEditingController(text: 'Yes, AND the improv tool app...');

  final _bodyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _bodyController.addListener(_bodyValue);
  }

  void _bodyValue() {
    final text = _bodyController.text;
  }

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      debugPrint(error.toString());
      platformResponse = error.toString();
    }

    if (!mounted) return;
    if (platformResponse == 'success') {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(platformResponse),
        ),
      );
    } else {
      ///TODO: show a dialogu that says
      ///'your default email application is not set up. Please send any bug, issue, or improvement to cedelen@protonmail.com

      showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(
                  'Your default mobile email app is not set up. Please send feedback to: cedelen@protonmail.com',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w400)),
              actions: [
                TextButton(
                  child: const Text('close',
                    style: TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Wrap(
            children: [
              Text(
                'Please send any bug, ',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                'issue, or improvement',
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            ],
          ),
          actions: <Widget>[
            IconButton(
              onPressed: send,
              icon: const Icon(
                Icons.send,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Container());
  }
}
