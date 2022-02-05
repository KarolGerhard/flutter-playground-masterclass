import 'package:flutter/material.dart';

class PrivacyTextWidget extends StatelessWidget {
  const PrivacyTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(
        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
        children: [
          TextSpan(
            text: "By tapping Create Account or Sign In, you agree to our ",
          ),
          TextSpan(
            text: "Terms.",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: " Learn how we process your data in our ",
          ),
          TextSpan(
            text: "Privacy Policy",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: " and ",
          ),
          TextSpan(
            text: "Cookies Policy",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ".",
          ),
        ],
      ),
    );
  }
}
