import 'package:flutter/material.dart';
import 'package:streaming_emissions/ma_premiere_page.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vos émissions en streaming',
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      home: const MaPremierePage(),
    );
  }
}
