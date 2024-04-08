import 'dart:math';

import 'package:flutter/material.dart';

class SuggestionButton extends StatefulWidget {
  SuggestionButton(
      {super.key, required this.type, required this.getter, this.tempList});

  final String type;
  final List<String> getter;
  List<String>? tempList;

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.deepPurple,
            minimumSize: const Size(325, 40)),
        onPressed: () async {
          if (widget.tempList?.isEmpty ?? true) {
            widget.tempList = List.from(widget.getter);
          }

          final random = Random();
          var i = random.nextInt(widget.tempList!.length);
          var text = widget.tempList![i];
          widget.tempList!.removeAt(i);
          debugPrint(widget.tempList.toString());
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => Dialog(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 24,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          foregroundColor: Colors.deepPurple),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Close',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        child: Text(
          widget.type,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.deepPurple,
              fontSize: 18,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
