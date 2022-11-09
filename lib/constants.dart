import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Widget child;
  final  onPressed;
  MyButton({
    required this.onPressed,
    required this.child,
    });
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Container(
          color: Colors.purple.shade400,
          constraints: BoxConstraints(
              maxWidth: 300.0,
              minHeight: 50.0),
          alignment: Alignment.center,
          child: ElevatedButton(
        onPressed: onPressed,
            child:null,
        ),
      ),
    );
  }
}