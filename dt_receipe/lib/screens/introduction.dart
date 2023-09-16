import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Fractional shares",
            body:
                "Instead of having to buy an entire share, invest any amount you want.",
          ),
          PageViewModel(
            title: "Learn as you go",
            body:
                "Download the Stockpile app and master the market with our mini-lesson.",
          ),
        ],
        onDone: () {
          // When done button is press
        },
        showBottomPart: false,
        showNextButton: true,
        next: const Text("Next", style: TextStyle(fontWeight: FontWeight.w600)),
        showBackButton: false,
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
