import 'package:flutter/material.dart';
import 'pdf_sign_screen.dart';

void main() {
  // Initialize Flutter binding to ensure plugins are properly registered
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DocPilot',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PdfSignScreen(),
    );
  }
}
