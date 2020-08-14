import 'package:flutter/material.dart';

class ButtonText extends StatelessWidget {
  final Function randomtext;

  ButtonText(this.randomtext);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: randomtext,
        child: Text("change text"),
      ),
    );
  }
}
