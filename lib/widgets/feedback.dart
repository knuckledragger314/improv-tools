import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';


class EmailSender extends StatefulWidget {
  const EmailSender({Key? key}) : super(key: key);

  @override
  State<EmailSender> createState() => _EmailSenderState();
}

class _EmailSenderState extends State<EmailSender> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController =
      TextEditingController(text: 'charlie.edelen.4@gmail.com');

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

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
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
      body: Container()
    );
  }


}

