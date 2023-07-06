import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const CustomButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(double.infinity, 50)),
          onPressed: onPressed,
          child: Text(text)),
    );
  }
}
