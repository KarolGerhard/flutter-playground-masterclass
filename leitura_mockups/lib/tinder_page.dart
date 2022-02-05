import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leitura_mockups/widgets/privacy_text_widget.dart';
import 'package:leitura_mockups/widgets/sign_button_widget.dart';

class TinderPage extends StatelessWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment
                .bottomLeft, // 10% of the width, so there are ten blinds.
            colors: <Color>[
              Color(0xffff6036),
              Color(0xfffd267a)
            ], // red to yellow
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          ),
        ),
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tinder-logo.png',
              width: widthScreen / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 96, bottom: 16),
              child: PrivacyTextWidget(),
            ),
            SignButtom(
              text: "Sign in with apple",
              iconPath: 'assets/apple-logo.png',
              onPressed: () {},
            ),
            SignButtom(
              text: "Sign in with facebook",
              iconPath: 'assets/facebook-logo.png',
              onPressed: () {},
            ),
            SignButtom(
              text: "Sign in with phone number",
              iconPath: 'assets/speech-bubble.png',
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: ' Trouble Signing In?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
