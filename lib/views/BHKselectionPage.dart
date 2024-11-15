import 'package:flutter/material.dart';

import '../component/constants/colors.dart';

class BHKSelection extends StatefulWidget {
  @override
  _BHKSelectionState createState() => _BHKSelectionState();
}

class _BHKSelectionState extends State<BHKSelection> {
  // List of options
  final List<String> options = ["1 RK", "1 BHK", "2 BHK", "3 BHK", "4 BHK", "4+ BHK"];

  // Currently selected option
  String selectedOption = "1 BHK";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('BHK Type',
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(
              color: ColorRes.textBlack3B,
              fontWeight: FontWeight.w500)),

          Wrap(
            spacing: 16.0,
            runSpacing: 16.0,
            children: options.map((option) {
              final isSelected = option == selectedOption;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedOption = option;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: isSelected ? Color(0xFF2D3252) : Colors.white, // Dark blue for selected, white for others
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: isSelected ? Color(0xFF2D3252) : Colors.grey, // Border color changes on selection
                      width: 1.5,
                    ),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

