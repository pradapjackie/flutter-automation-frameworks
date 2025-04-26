// lib/widgets/checkbox_selection.dart

import 'package:flutter/material.dart';
import '../utils/keys.dart';

class CheckboxSelection extends StatefulWidget {
  const CheckboxSelection({Key? key}) : super(key: key);

  @override
  CheckboxSelectionState createState() => CheckboxSelectionState();
}

class CheckboxSelectionState extends State<CheckboxSelection> {
  final List<String> items = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
  ];
  final Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      key: AppKeys.checkboxSelectionScreen,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 1. Header text
        const Text(
          'Select your favorite fruits:',
          key: AppKeys.checkboxHeader,         // ← you need to add this in AppKeys
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 16),

        // 2. The scrollable list
        Expanded(
          child: ListView.builder(
            key: AppKeys.checkboxList,          // ← and this too in AppKeys
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return CheckboxListTile(
                key: Key('checkbox_item_$index'), // dynamic per‐item key
                title: Text(item),
                value: selectedItems.contains(item),
                onChanged: (bool? value) {
                  setState(() {
                    if (value == true) {
                      selectedItems.add(item);
                    } else {
                      selectedItems.remove(item);
                    }
                  });
                },
              );
            },
          ),
        ),

        const SizedBox(height: 16),

        // 3. Display of current selection
        Text(
          'Selected items: ${selectedItems.isEmpty ? "None" : selectedItems.join(", ")}',
          key: AppKeys.checkboxSelected,
          style: const TextStyle(fontSize: 16),
        ),

        const SizedBox(height: 16),

        // 4. Reset button
        Center(
          child: ElevatedButton(
            key: AppKeys.checkboxReset,
            onPressed: () {
              setState(() => selectedItems.clear());
            },
            child: const Text('Reset Selection'),
          ),
        ),
      ],
    );
  }
}