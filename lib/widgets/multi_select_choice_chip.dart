import 'package:flutter/material.dart';

class MultiSelectChip extends StatefulWidget {
  final List<String> chipFilterList;
  List<String> selectedChoices;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip({
    super.key,
    required this.chipFilterList,
    required this.onSelectionChanged,
    required this.selectedChoices,
  });

  @override
  State<MultiSelectChip> createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.chipFilterList) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          selectedColor: Colors.yellow,
          label: Text(item),
          selected: widget.selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              widget.selectedChoices.contains(item)
                  ? widget.selectedChoices.remove(item)
                  : widget.selectedChoices.add(item);
              widget.onSelectionChanged(widget.selectedChoices);
            });
          },
        ),
      ));
    }

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Wrap(
          children: _buildChoiceList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              child: const Text(
                'clear filters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              onPressed: () {
                //clear all
                setState(() {
                  widget.selectedChoices = [];
                  widget.onSelectionChanged(widget.selectedChoices);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: TextButton(
                child: const Text(
                  'close',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )

          ],
        )
      ],
    );
  }
}
