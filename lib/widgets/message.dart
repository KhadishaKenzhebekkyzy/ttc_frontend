import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String message;

  Message({
    this.message
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
            "Выберите вид услуги",
            textAlign: TextAlign.center,
        )
      )
    );
  }
}
