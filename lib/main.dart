import 'package:flutter/material.dart' show BuildContext, ColorScheme, Colors, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'package:mission1_depd/mission1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // memberitahu page yang akan di jalankan pertama kali
      home: const Mission1Page(),
      // mematikan debug bar
      debugShowCheckedModeBanner: false,
    );
  }
}

