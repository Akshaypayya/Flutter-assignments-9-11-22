import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';



class TexttoSpeech extends StatelessWidget {
  final FlutterTts tts = FlutterTts();
  final TextEditingController controller =
  TextEditingController(text: 'Hello world');

  Home() {
    tts.setLanguage('en');
    tts.setSpeechRate(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
          ),
          ElevatedButton(
              onPressed: () {
                tts.speak(controller.text);
              },
              child: Text('Speak'))
        ],
      ),
    );
  }
}
