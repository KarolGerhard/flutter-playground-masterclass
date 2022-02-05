import 'package:flutter/material.dart';

class SignButtom extends StatelessWidget {
  final String text;
  final String? iconPath;
  final VoidCallback? onPressed;

  const SignButtom({
    Key? key,
    required this.text,
    this.iconPath,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: OutlinedButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (iconPath != null)
              Image.asset(
                iconPath!,
                width: 18,
              ),
            Expanded(
              child: Text(
                text.toUpperCase(),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        style: OutlinedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.all(20),
          side: const BorderSide(color: Colors.white),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
