import 'package:flutter/material.dart';

import '../component/constants/colors.dart';

class CustomDropdown extends StatefulWidget {
  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedValue = "10 km"; // Initial selected value
  final List<String> items = ["5 km", "10 km", "20 km", "50 km", "100 km"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:EdgeInsets.only(right: 37,left: 22),
        child: Row(
          children: [
            Expanded(
              flex:1,
              child: Container(
                height: 50,
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: ColorRes.textGrey, width: 1.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedValue = newValue!;
                            });
                          },
                          items: items.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          hint: Text("Search radius", style: TextStyle(color: Colors.grey)),
                          isExpanded: true,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: Color(0xFF2D3252), // Dark blue color
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
