import 'package:flutter/material.dart';
import 'package:flutter_project_new_mac/types/games/game_filters.dart';

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
  Map<String, String> allFiltersList = GameFilters.getGameFilters();
  _buildChoiceList() {
    List<Widget> choices = [];

    for (var item in widget.chipFilterList) {
      var index = widget.chipFilterList.indexOf(item);
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          selectedColor: Colors.yellow,
          label: Text(allFiltersList.values.toList()[index]),
          selected: widget.selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              ///TODO: make filters a map. Display one value and filter on the other
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
