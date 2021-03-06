import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  String label;
  String value;

  TextFieldWidget(
    this.label,
    this.value,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(
                  this.label,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Flexible(
            flex: 40,
            fit: FlexFit.loose,
            child: Container(
              child: Text(
                this.value,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[400],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
