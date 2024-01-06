import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeech extends StatefulWidget {
  const TextToSpeech({super.key});

  @override
  State<TextToSpeech> createState() => _TextToSpeechState();
}

class _TextToSpeechState extends State<TextToSpeech> {
  @override
  void initState() {
    // TODO: implement initState
    _TextToSpeechState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final TextEditingController controller =
    TextEditingController(text: 'Hello world');
    final FlutterTts tts = FlutterTts();
    void _TextToSpeechState() {
      tts.setLanguage('en');
      tts.setSpeechRate(1.0);
    }


    return Scaffold(
      appBar: AppBar(
        title: const Text("Text to speech"),
      ),
      body: Column(children: [
        TextField(
          controller: controller,
        ),
        ElevatedButton(onPressed: () {
          tts.speak(controller.text);
        }, child:const Text("speak"))
      ]),
    );
  }
}