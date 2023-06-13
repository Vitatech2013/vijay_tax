import 'package:flutter/material.dart';

import 'screens/homescreen.dart';
import 'screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      routes: {
        '/webView': (context) => const WebViewScreen(url: 'https://vijaytax.vitasoft.in'),
      },
    );
  }
}


