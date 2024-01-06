import 'package:flutter/material.dart';
import 'package:module3_flutter/speech_to_text/stt.dart';
import 'package:module3_flutter/text_to_speech/tts.dart';

import 'RestApi/rest_api.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:(TodoList()));
  }
}