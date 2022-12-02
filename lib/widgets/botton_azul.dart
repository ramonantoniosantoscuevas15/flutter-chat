import 'package:flutter/material.dart';

class BottonAzul extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const BottonAzul({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
            elevation: 2,
            highlightElevation: 5,
            color: Colors.blue,
            shape: const StadiumBorder(),
            onPressed: onPressed,
            child: Container(
              width: double.infinity,
              height: 55,
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            )
            
            );
  }
}
