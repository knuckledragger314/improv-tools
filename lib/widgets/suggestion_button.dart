import 'dart:math';

import 'package:flutter/material.dart';

class SuggestionButton extends StatelessWidget {
  const SuggestionButton({super.key, required this.type, required this.getter});

  final String type;
  final List<String> getter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.deepPurple,
            minimumSize: const Size(250, 40)),
        onPressed: () {
          var result = [];
          result = getter;
          final random = Random();
          var i = random.nextInt(result.length);
          var text = result[i];
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
        child: Text(type),
      ),
    );
  }
}
