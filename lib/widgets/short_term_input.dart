import 'package:flutter/material.dart';
import 'package:vault/widgets/analysis_card.dart';

class ShortTermInput extends StatefulWidget {
  @override
  _ShortTermInputState createState() => _ShortTermInputState();
}

class _ShortTermInputState extends State<ShortTermInput> {
  String _selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            DropdownButton(
              isExpanded: true,
              value: _selected,
              items: ["Bill Settlement", "Entertainment", "Insurance"]
                  .map((f) => DropdownMenuItem(
                        value: f,
                        child: Text(f),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  _selected = val;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Duration (Weeks)"),
              keyboardType: TextInputType.number,
              maxLength: 2,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(labelText: "Payment Plan"),
            ),
            SizedBox(
              height: 50,
            ),
            AnalysisCardItem(
              height: 200,
              onPressed: () {},
              width: double.infinity,
              leading: Icon(
                Icons.error_outline,
                color: Colors.redAccent,
                size: 100,
              ),
              isSelected: false,
              text: "Loan Not Recommended",
            )
          ],
        ),
      ),
    );
  }
}
