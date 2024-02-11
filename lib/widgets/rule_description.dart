import 'dart:core';

import 'package:flutter/material.dart';

class RuleDescription extends StatelessWidget {
  const RuleDescription(
      {super.key,
        required this.topLine,
        required this.summary});

  final String topLine;
  final String summary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          topLine,
          style:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(summary),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
