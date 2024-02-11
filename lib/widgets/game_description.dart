import 'dart:core';

import 'package:flutter/material.dart';

class GameDescription extends StatelessWidget {
  const GameDescription(
      {super.key,
      required this.title,
      required this.headers,
      required this.body});

  final String title;
  final List<String> headers;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
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
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: headers.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Text(headers[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700)),
                          ],
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: body,
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
